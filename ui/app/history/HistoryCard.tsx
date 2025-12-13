'use client'

import { useState, useTransition } from 'react';
import Image from 'next/image';
import Link from 'next/link';
import { deleteIdentification } from './actions'; // Ensure you have this file created

interface HistoryCardProps {
  item: any; 
}

export default function HistoryCard({ item }: HistoryCardProps) {
  const [isPending, startTransition] = useTransition();
  const [isDeleted, setIsDeleted] = useState(false);

  // --- 1. DATA PARSING ---
  // Access the fields exactly as your Python API returns them
  const data = item.prediction_data || {};
  
  // Clean up the name: "American_Avocet" -> "American Avocet"
  const birdName = data.commonName ? data.commonName.replace(/_/g, ' ') : 'Unknown Bird';
  
  // Use the pre-calculated string directly: "100.00%"
  const confidenceString = data.confidence_percent || null;

  // Use the raw number for logic: 0.999...
  const rawConfidence = data.confidence || 0;


  // --- 2. HANDLERS ---
  const handleDelete = async () => {
    const confirm = window.confirm(`Are you sure you want to delete this sighting of ${birdName}?`);
    if (!confirm) return;

    startTransition(async () => {
      try {
        await deleteIdentification(item.id);
        setIsDeleted(true); // Optimistically hide the card
      } catch (e) {
        alert("Failed to delete item. Please try again.");
      }
    });
  };

  // If deleted, render nothing so it disappears immediately
  if (isDeleted) return null;

  return (
    <div className="border rounded-lg overflow-hidden shadow-sm hover:shadow-md transition bg-white flex flex-col h-full">
      
      {/* IMAGE HEADER */}
      <div className="relative h-48 w-full bg-gray-200">
        <Image 
          src={item.image_url} 
          alt={birdName}
          fill
          className="object-cover"
        />
        
        {/* CONFIDENCE BADGE */}
        {confidenceString && (
          <div className={`absolute top-2 right-2 px-2 py-1 rounded text-xs font-bold shadow-sm backdrop-blur-sm ${
            rawConfidence > 0.8 ? 'bg-green-500/90 text-white' : 
            rawConfidence > 0.5 ? 'bg-yellow-400/90 text-black' : 
            'bg-red-500/90 text-white'
          }`}>
            {confidenceString} Match
          </div>
        )}
      </div>

      {/* CONTENT BODY */}
      <div className="p-4 flex-grow">
        <div className="flex justify-between items-start">
            <h2 className="text-xl font-semibold capitalize mb-1 text-gray-800">
              {birdName}
            </h2>
        </div>
        
        <p className="text-sm text-gray-500 mb-2">
          Captured: {new Date(item.created_at).toLocaleDateString()}
        </p>
        
        {/* Optional: Show model version if available */}
        <p className="text-xs text-gray-400 font-mono mt-2">
            Model: {data.model_used || 'm1'}
        </p>
      </div>

      {/* ACTION BUTTONS */}
      <div className="p-3 bg-gray-50 border-t flex gap-3">
        {/* View Button -> Goes to Wiki Page */}
        <Link 
          href={`/wiki/${data.commonName}`} // Uses the raw key (e.g., American_Avocet)
          className="flex-1 text-center px-4 py-2 text-sm font-medium text-blue-700 bg-blue-50 border border-blue-200 rounded-md hover:bg-blue-100 transition-colors"
        >
          View Details
        </Link>
        
        {/* Delete Button -> Server Action */}
        <button
          onClick={handleDelete}
          disabled={isPending}
          className="flex-1 px-4 py-2 text-sm font-medium text-red-600 bg-white border border-red-200 rounded-md hover:bg-red-50 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
        >
          {isPending ? 'Deleting...' : 'Delete'}
        </button>
      </div>
    </div>
  );
}