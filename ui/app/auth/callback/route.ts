import { NextRequest, NextResponse } from 'next/server';
import { createClient } from '@/lib/supabase/server'; // Using Fix #1
import { v4 as uuidv4 } from 'uuid';

const PYTHON_API_URL = 'http://127.0.0.1:8000';

export async function POST(req: NextRequest) {
  try {
    // 1. Initialize Supabase Client
    // CRITICAL: We must await this because lib/supabase/server.ts is async now
    const supabase = await createClient();

    // 2. AUTH CHECK: Get the current user
    const { data: { user }, error: authError } = await supabase.auth.getUser();
    
    if (authError || !user) {
      console.error("Auth error:", authError?.message || "No user found");
      // This is the error you were seeing. It should be fixed now.
      return NextResponse.json({ error: 'Unauthorized. Please log in.' }, { status: 401 });
    }
    const userId = user.id;

    // ... (The rest of your code for form data, storage, and AI remains the same)
    const frontendFormData = await req.formData();
    const imageFile = frontendFormData.get('image') as File;
    const modelId = frontendFormData.get('model_id') as string || 'm1'; 

    if (!imageFile) {
      return NextResponse.json({ error: 'No image file uploaded' }, { status: 400 });
    }

    const fileExt = imageFile.name.split('.').pop();
    const fileName = `${userId}/${uuidv4()}.${fileExt}`;
    const filePath = `${fileName}`;

    const { error: uploadError } = await supabase
      .storage
      .from('bird-images')
      .upload(filePath, imageFile, { upsert: false });

    if (uploadError) throw new Error("Failed to upload image.");

    const { data: { publicUrl: imageUrl } } = supabase
      .storage
      .from('bird-images')
      .getPublicUrl(filePath);

    const pythonFormData = new FormData();
    pythonFormData.append('file', imageFile);

    const pythonResponse = await fetch(`${PYTHON_API_URL}/predict/${modelId}`, {
      method: 'POST',
      body: pythonFormData,
    });

    if (!pythonResponse.ok) throw new Error(`Python server error`);

    const predictionData = await pythonResponse.json();

    await supabase
        .from('identifications')
        .insert({
            user_id: userId,
            image_url: imageUrl,
            prediction_data: predictionData
        });

    return NextResponse.json({ ...predictionData, imageUrl });

  } catch (error: any) {
    console.error('API Route Error:', error.message);
    return NextResponse.json(
      { error: error.message || 'An unexpected error occurred.' },
      { status: 500 }
    );
  }
}