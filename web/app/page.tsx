// app/page.tsx
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Separator } from "@/components/ui/separator"; // Add this if you want a separator like the image

// We'll create these custom components below
import { TopHeader } from "@/components/layout/TopHeader";
import { BottomNavBar } from "@/components/layout/BottomNavBar";

export default function HomePage() {
  // Placeholder for identified bird data
  const identifiedBird = {
    imageUrl: "/Cardinaal.jpg", // Example image URL
    commonName: "Northern Cardinal",
    scientificName: "Cardinalis cardinalis",
    confidence: "89%",
  };

  return (
    <div className="relative z-10 flex flex-col items-center w-full h-screen pt-4 pb-0">
      <div className="w-full max-w-sm mx-auto flex flex-col h-full">
        <TopHeader />

        {/* Middle Section (image + card) */}
        <div className="flex flex-col flex-grow w-full overflow-hidden">
          {/* Bird Image Section */}
          <div className="flex-1 flex items-center justify-center p-4">
            <img
              src={identifiedBird.imageUrl}
              alt={identifiedBird.commonName}
              className="max-h-[50vh] object-contain rounded-lg shadow-lg"
            />
          </div>

          {/* Identification Card */}
          <Card className="w-full bg-zinc-800 text-white rounded-t-3xl rounded-b-none p-6 shadow-xl space-y-4">
            <div className="flex justify-between items-center mb-2">
              <div>
                <h2 className="text-3xl font-bold">
                  {identifiedBird.commonName}
                </h2>
                <p className="text-sm text-gray-400">
                  {identifiedBird.scientificName}
                </p>
              </div>
              <Button
                variant="ghost"
                size="icon"
                className="text-red-500 hover:text-red-400"
              >
                ❤️
              </Button>
            </div>

            <Separator className="bg-zinc-700 my-4" />

            <div className="w-full flex justify-center mt-[-15] ">
              <Button variant="outline" className="flex-1 bg-green-600 hover:bg-green-700 rounded-xl">
                Identify New Bird
              </Button>
              <Button
                variant="outline"
                className="flex-1 border-green-600 text-green-600 hover:bg-green-600 hover:text-white  rounded-xl"
              >
                Learn More
              </Button>
            </div>
            <p className="text-xs text-center text-gray-500">
              Conservation Status: Not Evaluated
            </p>
          </Card>
        </div>

        {/* Bottom NavBar */}
        <BottomNavBar />
      </div>
    </div>
  );
}
