// components/layout/BottomNavBar.tsx
import React from 'react';
import { Button } from "@/components/ui/button";
import { Home, Compass, Bookmark, Bird } from 'lucide-react'; // Example icons

export function BottomNavBar() {
  return (
    <nav className="w-full max-w-sm bg-zinc-800 p-2 flex justify-around items-center border-t border-zinc-700">
      <Button variant="ghost" className="flex flex-col h-full items-center text-xs text-green-400">
        <Home size={20} />
        <span>Home</span>
      </Button>
      <Button variant="ghost" className="flex flex-col h-full items-center text-xs text-gray-400">
        <Bird size={20} />
        <span>Bird Dex</span>
      </Button>
      <Button variant="ghost" className="flex flex-col h-full items-center text-xs text-gray-400">
        <Compass size={20} />
        <span>Explore</span>
      </Button>
      <Button variant="ghost" className="flex flex-col h-full items-center text-xs text-gray-400">
        <Bookmark size={20} />
        <span>Saved</span>
      </Button>
    </nav>
  );
}