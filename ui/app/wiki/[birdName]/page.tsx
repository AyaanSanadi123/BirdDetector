import { createClient } from '@/lib/supabase/server';
import Link from 'next/link';
import { notFound } from 'next/navigation';

interface SpeciesInfo {
  id: number;
  class_name: string;
  common_name: string;
  scientific_name: string;
  description: string;
  wiki_url: string;
}

export default async function BirdWikiPage({ params }: { params: Promise<{ birdName: string }> }) {
  // 1. Await params (Required in Next.js 15+)
  const { birdName } = await params;
  
  // 2. Initialize Supabase
  const supabase = await createClient();

  // 3. Fetch Data matching the URL parameter (class_name)
  const { data: bird, error } = await supabase
    .from('species_info')
    .select('*')
    .eq('class_name', birdName)
    .single();

  // 4. Handle 404 - If bird isn't in our database yet
  if (error || !bird) {
    console.error("Wiki Error:", error);
    return notFound(); 
  }

  // Cast type safely
  const species = bird as SpeciesInfo;

  return (
    <div className="min-h-screen bg-gray-50 py-10 px-4 sm:px-6">
      <div className="max-w-3xl mx-auto">
        
        {/* Navigation Breadcrumb */}
        <Link 
            href="/history" 
            className="inline-flex items-center text-sm font-medium text-gray-500 hover:text-blue-600 mb-6 transition-colors"
        >
          <svg className="w-4 h-4 mr-1" fill="none" stroke="currentColor" viewBox="0 0 24 24">
            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10 19l-7-7m0 0l7-7m-7 7h18" />
          </svg>
          Back to My Sightings
        </Link>

        {/* Main Content Card */}
        <div className="bg-white rounded-2xl shadow-xl overflow-hidden border border-gray-100">
          
          {/* Header Section */}
          <div className="bg-slate-900 text-white p-8 sm:p-10 relative overflow-hidden">
            {/* Decorative background element */}
            <div className="absolute top-0 right-0 -mt-10 -mr-10 w-40 h-40 bg-white opacity-5 rounded-full blur-2xl"></div>
            
            <h1 className="text-3xl sm:text-5xl font-bold mb-2 tracking-tight">
              {species.common_name}
            </h1>
            <p className="text-xl text-slate-300 italic font-serif opacity-90">
              {species.scientific_name}
            </p>
          </div>

          {/* Body Content */}
          <div className="p-8 sm:p-10 space-y-8">
            
            {/* Description Block */}
            <section>
              <h2 className="text-2xl font-bold text-gray-900 mb-4 flex items-center">
                <span className="bg-blue-100 text-blue-600 p-2 rounded-lg mr-3">
                    <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M13 16h-1v-4h-1m1-4h.01M21 12a9 9 0 11-18 0 9 9 0 0118 0z" /></svg>
                </span>
                About this Bird
              </h2>
              <div className="prose prose-lg text-gray-600 leading-relaxed">
                {/* We render the description text. 
                    If your python script left '...' at the end, it shows here. */}
                <p>{species.description}</p>
              </div>
            </section>

            <hr className="border-gray-100" />

            {/* External Link */}
            <div className="flex justify-between items-center pt-2">
                <span className="text-sm text-gray-400">
                    Source: Wikipedia API
                </span>
                <a 
                    href={species.wiki_url} 
                    target="_blank" 
                    rel="noopener noreferrer"
                    className="inline-flex items-center px-4 py-2 bg-blue-50 text-blue-700 rounded-lg font-medium hover:bg-blue-100 transition-colors"
                >
                    Read Full Article
                    <svg className="w-4 h-4 ml-2" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10 6H6a2 2 0 00-2 2v10a2 2 0 002 2h10a2 2 0 002-2v-4M14 4h6m0 0v6m0-6L10 14" /></svg>
                </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}