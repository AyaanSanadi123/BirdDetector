import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@/lib/supabase/server';
import { v4 as uuidv4 } from 'uuid';

// Override with env var in production
const PYTHON_API_URL = process.env.PYTHON_API_URL || 'http://127.0.0.1:8000';

export async function POST(req: NextRequest) {
  try {
    const supabase = await createClient();

    // 1. AUTH CHECK
    const { data: { user }, error: authError } = await supabase.auth.getUser();
    if (authError || !user) {
      return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
    }
    const userId = user.id;

    // 2. INPUT HANDLING
    const formData = await req.formData();
    const imageFile = formData.get('image') as File;
    const modelId = formData.get('model_id') as string || 'm1';

    if (!imageFile) {
      return NextResponse.json({ error: 'No image uploaded' }, { status: 400 });
    }

    // 3. STORAGE UPLOAD
    // Convert to Buffer for reliable Node.js upload
    const arrayBuffer = await imageFile.arrayBuffer();
    const fileBuffer = Buffer.from(arrayBuffer);
    
    const fileExt = imageFile.name.split('.').pop();
    const fileName = `${userId}/${uuidv4()}.${fileExt}`;

    const { error: uploadError } = await supabase
      .storage
      .from('birds-pics') 
      .upload(fileName, fileBuffer, {
        contentType: imageFile.type,
        upsert: false
      });

    if (uploadError) {
      console.error("Upload Error:", uploadError);
      return NextResponse.json({ error: 'Storage upload failed' }, { status: 500 });
    }

    // Get Public URL
    const { data: { publicUrl: imageUrl } } = supabase
      .storage
      .from('birds-pics')
      .getPublicUrl(fileName);


    // 4. AI PREDICTION
    const pythonFormData = new FormData();
    const fileBlob = new Blob([fileBuffer], { type: imageFile.type });
    pythonFormData.append('file', fileBlob, imageFile.name);

    let pythonResponse;
    try {
        pythonResponse = await fetch(`${PYTHON_API_URL}/predict/${modelId}`, {
            method: 'POST',
            body: pythonFormData,
        });
    } catch (err) {
        console.error("Python API Error:", err);
        return NextResponse.json({ error: 'AI Service Unavailable' }, { status: 503 });
    }

    if (!pythonResponse.ok) {
        return NextResponse.json({ error: 'Prediction failed' }, { status: pythonResponse.status });
    }

    const predictionData = await pythonResponse.json(); 
    // Example: { commonName: "American_Avocet", confidence: 0.99, ... }


    // 5. [NEW STEP] FETCH WIKI DATA 
    // We use the 'commonName' from Python to find the 'class_name' in DB
    const birdKey = predictionData.commonName; 
    
    const { data: wikiData } = await supabase
        .from('species_info')
        .select('*')
        .eq('class_name', birdKey)
        .single();
    
    // Combine AI result with Database Facts
    const enrichedResult = {
        ...predictionData,
        species_info: wikiData || null // If not found, just send null
    };


    // 6. SAVE TO HISTORY
    // We save the enriched data so the history log contains the facts as they were at that time
    await supabase
        .from('identifications')
        .insert({
            user_id: userId,
            image_url: imageUrl,
            prediction_data: enrichedResult
        });

    // 7. RETURN TO FRONTEND
    return NextResponse.json({ 
        ...enrichedResult, 
        imageUrl 
    });

  } catch (error: any) {
    console.error('API Route Error:', error);
    return NextResponse.json(
      { error: error.message || 'Internal Server Error' },
      { status: 500 }
    );
  }
}