'use client';

import { useState, useRef, ChangeEvent } from 'react';
import Link from 'next/link';
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import { Skeleton } from "@/components/ui/skeleton";
import { UploadCloud, Bird, Image as ImageIcon, CheckCircle2, AlertCircle, BookOpen, ExternalLink, UserCircle, History } from 'lucide-react';

// Interfaces
interface SpeciesInfo {
  description?: string;
  wiki_url?: string;
  scientific_name?: string;
}

interface PredictionResult {
  commonName: string;
  confidence: number;
  confidence_percent: string;
  model_used: string;
  species_info?: SpeciesInfo;
}

export default function DashboardPage() {
  const [selectedFile, setSelectedFile] = useState<File | null>(null);
  const [previewUrl, setPreviewUrl] = useState<string | null>(null);
  const [isLoading, setIsLoading] = useState(false);
  const [prediction, setPrediction] = useState<PredictionResult | null>(null);
  const fileInputRef = useRef<HTMLInputElement>(null);

  const handleFileChange = (e: ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;

    if (!file.type.startsWith('image/')) {
       alert("Invalid file format. Please select an image file (JPEG, PNG).");
       return;
    }

    setSelectedFile(file);
    setPreviewUrl(URL.createObjectURL(file));
    setPrediction(null);
  };

  const triggerFileInput = () => {
    fileInputRef.current?.click();
  };

  const handleIdentify = async () => {
    if (!selectedFile) return;

    setIsLoading(true);
    setPrediction(null);

    try {
      const formData = new FormData();
      formData.append('image', selectedFile);

      const response = await fetch('/api/identify', {
        method: 'POST',
        body: formData,
      });

      const data = await response.json();

      if (!response.ok) throw new Error(data.error || 'Failed to identify');

      setPrediction(data);

    } catch (error) {
      console.error(error);
      alert("Error: Something went wrong during identification. See console for details.");
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="min-h-screen bg-slate-950 text-slate-50">
      {/* --- UPDATED HEADER --- */}
      <header className="bg-slate-900/50 border-b border-slate-800 backdrop-blur-sm sticky top-0 z-10">
        <div className="container mx-auto px-4 py-4 flex justify-between items-center">
            
            {/* Logo */}
            <div className="flex items-center gap-2 font-bold text-xl">
                <Bird className="text-green-500" />
                <span>BirdSpec</span>
            </div>

            {/* Navigation Actions */}
            <div className="flex items-center gap-2">
                {/* History Button */}
                <Link href="/history">
                    <Button variant="ghost" size="sm" className="text-slate-400 hover:text-white hidden sm:flex">
                        <History className="mr-2 h-4 w-4" />
                        History
                    </Button>
                </Link>

                {/* Account Button (New) */}
                <Link href="/account">
                    <Button variant="ghost" size="icon" className="text-slate-400 hover:text-white hover:bg-slate-800 rounded-full">
                        <UserCircle className="h-6 w-6" />
                    </Button>
                </Link>
            </div>
        </div>
      </header>

      {/* Main Content Grid */}
      <main className="container mx-auto px-4 py-8">
        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8 items-start">

          {/* Left Column: Upload Area */}
          <div className="lg:col-span-2 space-y-6">
             <Card className="bg-slate-900 border-slate-800 shadow-lg overflow-hidden relative group">
                <CardContent className="p-0">
                    <div className={`relative min-h-[400px] md:min-h-[500px] flex items-center justify-center bg-slate-950/50 ${!previewUrl ? 'border-2 border-dashed border-slate-700 m-4 rounded-lg' : ''}`}>
                        {previewUrl ? (
                            <img 
                                src={previewUrl} 
                                alt="Preview" 
                                className="w-full h-full object-contain absolute inset-0" 
                            />
                        ) : (
                            <div className="text-center text-slate-500 p-6">
                                <ImageIcon size={64} className="mx-auto mb-4 opacity-50" />
                                <p className="text-lg font-medium mb-2">No image selected</p>
                                <p className="text-sm">Upload a clear photo of a bird to begin.</p>
                            </div>
                        )}
                        
                        {/* Change Image Overlay */}
                        {previewUrl && !isLoading && (
                             <div className="absolute bottom-0 inset-x-0 p-6 bg-gradient-to-t from-slate-950/90 to-transparent opacity-0 group-hover:opacity-100 transition-opacity flex justify-center gap-4">
                                <Button onClick={triggerFileInput} variant="secondary" className="bg-slate-800 text-white hover:bg-slate-700">
                                    Change Image
                                </Button>
                             </div>
                        )}
                    </div>
                </CardContent>
             </Card>

            {/* Controls */}
            <div className="flex flex-col sm:flex-row gap-4 items-center justify-between bg-slate-900/50 p-4 rounded-xl border border-slate-800">
                <div>
                    <input 
                        type="file" 
                        ref={fileInputRef}
                        accept="image/*" 
                        onChange={handleFileChange} 
                        className="hidden"
                        disabled={isLoading}
                    />
                    {!previewUrl && (
                        <Button onClick={triggerFileInput} variant="secondary" className="w-full sm:w-auto bg-slate-800 text-white hover:bg-slate-700">
                            <UploadCloud className="mr-2 h-5 w-5" />
                            Select Image
                        </Button>
                    )}
                     {previewUrl && (
                        <div className="flex items-center text-slate-300 bg-slate-800/50 px-4 py-2 rounded-md">
                             <CheckCircle2 className="text-green-500 mr-2 h-5 w-5" />
                             <span className="text-sm truncate max-w-[200px]">{selectedFile?.name}</span>
                        </div>
                     )}
                </div>

                <Button 
                    onClick={handleIdentify} 
                    disabled={!selectedFile || isLoading}
                    size="lg"
                    className="w-full sm:w-auto bg-green-600 hover:bg-green-700 text-white shadow-lg shadow-green-900/20 disabled:opacity-50 disabled:cursor-not-allowed"
                >
                    {isLoading ? (
                        <>
                            <svg className="animate-spin -ml-1 mr-3 h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"></circle>
                                <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                            </svg>
                            Analyzing...
                        </>
                    ) : (
                        <>
                            <Bird className="mr-2 h-5 w-5" />
                            Identify Species
                        </>
                    )}
                </Button>
            </div>
          </div>

          {/* Right Column: Results */}
          <div className="space-y-6">
            {!isLoading && !prediction && (
                 <Card className="bg-slate-900 border-slate-800">
                    <CardHeader>
                        <CardTitle className="flex items-center text-xl">
                            <AlertCircle className="mr-2 text-blue-400" />
                            How it works
                        </CardTitle>
                    </CardHeader>
                    <CardContent className="text-slate-400 space-y-3">
                        <p>1. Click "Select Image" to choose a bird photo.</p>
                        <p>2. Click the green "Identify Species" button.</p>
                        <p className="text-sm italic mt-4 opacity-70">Model: Standard (200 species)</p>
                    </CardContent>
                 </Card>
            )}

            {isLoading && (
                <Card className="bg-slate-900 border-slate-800 animate-pulse">
                    <CardHeader className="pb-2">
                         <Skeleton className="h-6 w-1/2 bg-slate-800" />
                    </CardHeader>
                    <CardContent className="space-y-4">
                         <Skeleton className="h-12 w-full bg-slate-800 rounded-lg" />
                         <Skeleton className="h-4 w-3/4 bg-slate-800" />
                    </CardContent>
                </Card>
            )}

            {prediction && !isLoading && (
              <Card className="bg-gradient-to-br from-green-900/40 to-slate-900 border-green-800 overflow-hidden relative animate-in slide-in-from-right-4 fade-in duration-500">
                <Bird className="absolute -right-6 -bottom-6 text-green-500/10 h-32 w-32 transform rotate-12 pointer-events-none" />
                
                <CardHeader className="pb-2 relative">
                  <CardDescription className="text-green-400 font-medium mb-1 uppercase tracking-wider text-xs">Identification Result</CardDescription>
                  <CardTitle className="text-3xl md:text-4xl font-extrabold text-white leading-tight capitalize">
                    {prediction.commonName.replace(/_/g, ' ')}
                  </CardTitle>
                  {prediction.species_info?.scientific_name && (
                    <p className="text-slate-400 italic font-serif text-lg">
                        {prediction.species_info.scientific_name}
                    </p>
                  )}
                </CardHeader>

                <CardContent className="relative pt-4 space-y-6">
                   <div className="flex items-center gap-4">
                        <div className="bg-slate-950/50 rounded-lg p-3 border border-slate-800 flex-1">
                             <p className="text-sm text-slate-400 mb-1">Confidence</p>
                             <p className="text-2xl font-bold text-green-400">{prediction.confidence_percent}</p>
                        </div>
                        <div className="bg-slate-950/50 rounded-lg p-3 border border-slate-800 flex-1">
                             <p className="text-sm text-slate-400 mb-1">Model</p>
                             <p className="text-lg font-semibold text-slate-200 uppercase">{prediction.model_used}</p>
                        </div>
                   </div>

                   {prediction.species_info?.wiki_url && (
                        <div className="pt-4 border-t border-slate-700/50">
                            <p className="text-slate-400 text-sm mb-3">Want to learn more?</p>
                            <a 
                                href={prediction.species_info.wiki_url}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="flex items-center justify-center w-full bg-blue-600/20 hover:bg-blue-600/30 text-blue-200 border border-blue-500/30 p-3 rounded-lg transition-all group"
                            >
                                <BookOpen className="w-5 h-5 mr-2" />
                                Read on Wikipedia
                                <ExternalLink className="w-4 h-4 ml-2 opacity-50 group-hover:translate-x-1 transition-transform" />
                            </a>
                        </div>
                   )}
                   
                   <Button variant="outline" className="w-full border-slate-700 hover:bg-slate-800 text-slate-300 hover:text-white" onClick={() => {
                        setPrediction(null);
                        setPreviewUrl(null);
                        setSelectedFile(null);
                   }}>
                        Identify Another Bird
                   </Button>
                </CardContent>
              </Card>
            )}
          </div>
        </div>
      </main>
    </div>
  );
}