'use client';

import Link from 'next/link';
import { Button } from "@/components/ui/button";
import { 
  Camera, 
  CheckCircle2, 
  Leaf, 
  Binoculars, 
  GraduationCap, 
  Globe2
} from 'lucide-react';

// --- CONFIGURATION ---
// Replace these with your actual image paths from your public folder later.
// For now, I'm using placeholders so you can see the layout immediately.
// --- CONFIGURATION ---
const BIRD_IMAGES = [
  'https://plus.unsplash.com/premium_photo-1724864863815-1469c8b74711?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1452570053594-1b985d6ea890?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1591608971362-f08b2a75731a?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1620694563886-c3a80ec55f41?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1484704324500-528d0ae4dc7d?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://images.unsplash.com/photo-1486365227551-f3f90034a57c?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
];

export default function LandingPage() {
  return (
    <div className="min-h-screen bg-slate-950 text-white selection:bg-green-500/30 overflow-x-hidden">
      
      {/* --- INLINE STYLES FOR ANIMATIONS (Since no tailwind.config) --- */}
      <style dangerouslySetInnerHTML={{ __html: `
        @keyframes scroll {
          0% { transform: translateX(0); }
          100% { transform: translateX(-50%); }
        }
        @keyframes shimmer {
          0% { transform: translateX(-150%) rotate(45deg); }
          100% { transform: translateX(150%) rotate(45deg); }
        }
        .animate-scroll {
          animation: scroll 40s linear infinite;
        }
        .animate-shimmer {
          animation: shimmer 3s infinite linear;
        }
      `}} />

      {/* 1. HERO SECTION */}
      <header className="relative overflow-hidden">
        {/* Navigation */}
        <nav className="p-6 flex justify-between items-center max-w-7xl mx-auto relative z-10">
          <div className="flex items-center gap-2 text-2xl font-bold tracking-tighter">
            <span className="text-green-500">Bird</span><span>Spec</span>
          </div>
          <div className="flex items-center gap-4">
            <Link href="/login" className="text-sm font-medium text-slate-400 hover:text-white transition-colors">
              Sign In
            </Link>
            <Link href="/dashboard">
                <Button className="bg-white text-slate-950 hover:bg-slate-200 rounded-full font-semibold transition-transform hover:scale-105">
                    Launch App
                </Button>
            </Link>
          </div>
        </nav>

        {/* Hero Content */}
        <div className="relative z-10 max-w-5xl mx-auto pt-20 pb-32 px-6 text-center space-y-8 animate-in fade-in slide-in-from-bottom-8 duration-1000">
           <div className="inline-flex items-center rounded-full border border-slate-800 bg-slate-900/50 px-3 py-1 text-sm text-slate-300 backdrop-blur-xl mb-4">
              <span className="flex h-2 w-2 rounded-full bg-green-500 mr-2 animate-pulse"></span>
              v1.0 Standard Model Live
           </div>
           
           <h1 className="text-5xl md:text-8xl font-extrabold tracking-tight leading-tight">
             Decode the Sky <br />
             <span className="text-transparent bg-clip-text bg-gradient-to-r from-green-400 via-emerald-400 to-cyan-500">
               In Real Time.
             </span>
           </h1>

           <p className="text-xl text-slate-400 max-w-2xl mx-auto leading-relaxed">
             The world's most advanced AI for ornithology. Instantly identify species, track migration patterns, and contribute to global conservation.
           </p>

           <div className="pt-8 flex flex-col sm:flex-row items-center justify-center gap-4">
             <Link href="/dashboard">
               <Button size="lg" className="h-14 px-8 text-lg bg-green-600 hover:bg-green-500 rounded-full shadow-[0_0_40px_-10px_rgba(22,163,74,0.5)] transition-all hover:scale-105">
                 <Camera className="mr-2 h-5 w-5" />
                 Start Identification
               </Button>
             </Link>
             <Link href="#pricing">
                <Button variant="ghost" size="lg" className="h-14 px-8 text-lg rounded-full text-slate-300 hover:text-white hover:bg-slate-900">
                    View Models
                </Button>
             </Link>
           </div>
        </div>

        {/* Abstract Background Grid */}
        <div className="absolute inset-0 bg-[linear-gradient(to_right,#80808012_1px,transparent_1px),linear-gradient(to_bottom,#80808012_1px,transparent_1px)] bg-[size:24px_24px] [mask-image:radial-gradient(ellipse_60%_50%_at_50%_0%,#000_70%,transparent_100%)] pointer-events-none"></div>
      </header>


      {/* 2. THE VISION */}
      <section className="py-32 bg-slate-900 relative overflow-hidden">
        <div className="max-w-4xl mx-auto px-6 text-center relative z-10">
            <Leaf className="w-12 h-12 text-green-500 mx-auto mb-8 opacity-80" />
            <h2 className="text-3xl md:text-5xl font-serif font-medium text-slate-200 leading-tight mb-8">
                "We protect what we love,<br/> and we love what we understand."
            </h2>
            <div className="space-y-6 text-lg md:text-xl text-slate-400 leading-relaxed max-w-3xl mx-auto">
                <p>
                    Our mission extends beyond simple identification. We aim to bridge the gap between human observation and scientific understanding. 
                    By democratizing access to expert-level ornithological data, we empower every individual to become a guardian of their local ecosystem.
                </p>
                <p>
                    Every photo uploaded contributes to a global pulse-check of avian populations, helping us track endangered species and preserve the biodiversity that graces our skies.
                </p>
            </div>
        </div>
        {/* Decorative elements */}
        <div className="absolute top-0 left-0 w-64 h-64 bg-green-500/5 rounded-full blur-3xl"></div>
        <div className="absolute bottom-0 right-0 w-96 h-96 bg-blue-500/5 rounded-full blur-3xl"></div>
      </section>


      {/* 3. INFINITE GALLERY (Slideshow) */}
      <section className="py-20 bg-slate-950 border-y border-slate-900 overflow-hidden">
        <div className="mb-10 text-center px-4">
            <p className="text-sm font-bold tracking-widest text-green-500 uppercase">Powered by our Dataset</p>
        </div>
        
        {/* The Marquee Container */}
        <div className="relative w-full flex overflow-x-hidden group">
            {/* We duplicate the array 4 times to ensure it never runs out of space on wide screens */}
            <div className="flex animate-scroll hover:[animation-play-state:paused] gap-6 px-6">
                {[...BIRD_IMAGES, ...BIRD_IMAGES, ...BIRD_IMAGES, ...BIRD_IMAGES].map((src, idx) => (
                    <div key={idx} className="relative w-64 h-48 md:w-80 md:h-60 flex-shrink-0 rounded-xl overflow-hidden grayscale hover:grayscale-0 transition-all duration-500 ease-in-out hover:scale-105 border border-slate-800">
                        <img 
                            src={src} 
                            alt={`Bird ${idx}`} 
                            className="w-full h-full object-cover" 
                        />
                        <div className="absolute inset-0 bg-gradient-to-t from-slate-950/80 to-transparent opacity-50"></div>
                    </div>
                ))}
            </div>
        </div>
      </section>


      {/* 4. MODEL TIERS (Pricing) */}
      <section id="pricing" className="py-32 px-6 bg-slate-950 relative">
        {/* Background Glow */}
        <div className="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 w-[800px] h-[500px] bg-blue-500/5 rounded-full blur-[100px] pointer-events-none"></div>

        <div className="max-w-7xl mx-auto relative z-10">
            <div className="text-center mb-20 space-y-4">
                <h2 className="text-4xl md:text-5xl font-bold tracking-tight">Choose Your Intelligence</h2>
                <p className="text-xl text-slate-400 max-w-2xl mx-auto">
                    Scalable AI models designed for hobbyists, researchers, and professionals.
                </p>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-3 gap-8 items-start">
                
                {/* TIER 1: FREE (Active) */}
                <PricingCard 
                    title="The Enthusiast"
                    price="Free"
                    isPopular
                    description="Perfect for backyard birdwatchers and students."
                    features={[
                        "450+ Common Species",
                        "Standard AI Accuracy (~92%)",
                        "Basic Wiki Information",
                        "Unlimited Uploads"
                    ]}
                />

                {/* TIER 2: COMING SOON */}
                <PricingCard 
                    title="The Explorer"
                    price="$5"
                    period="/mo"
                    comingSoon
                    description="For serious birders who need higher precision in the wild."
                    features={[
                        "1,200+ Global Species",
                        "Enhanced AI Model (~96%)",
                        "Faster Processing Priority",
                        "Detailed Migration Maps",
                        "Save History Permanently"
                    ]}
                />

                {/* TIER 3: COMING SOON */}
                <PricingCard 
                    title="The Ornithologist"
                    price="$10"
                    period="/mo"
                    comingSoon
                    description="Research-grade tools for conservationists and academics."
                    features={[
                        "All Known Species (10,000+)",
                        "Laboratory Grade AI (99.9%)",
                        "API Access for Batch Processing",
                        "Endangered Status Alerts",
                        "Export Data to CSV/JSON"
                    ]}
                />
            </div>
        </div>
      </section>


      {/* 5. WHO IS THIS FOR? */}
      <section className="py-32 bg-slate-900">
         <div className="max-w-6xl mx-auto px-6">
            <h2 className="text-3xl font-bold mb-16 text-center">Built for the Community</h2>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-12">
                <UseCase 
                    icon={<Binoculars className="w-8 h-8 text-yellow-400" />}
                    title="Birdwatchers"
                    text="Identify that fleeting flash of color in the trees instantly. Keep a digital life list of every sighting."
                />
                <UseCase 
                    icon={<GraduationCap className="w-8 h-8 text-blue-400" />}
                    title="Researchers"
                    text="Process thousands of trap-camera images in minutes. Focus on analysis, not manual sorting."
                />
                <UseCase 
                    icon={<Globe2 className="w-8 h-8 text-green-400" />}
                    title="Conservationists"
                    text="Monitor biodiversity health in real-time. Identify invasive species before they spread."
                />
            </div>
         </div>
      </section>


      {/* FOOTER */}
      <footer className="bg-slate-950 border-t border-slate-900 py-12 px-6">
        <div className="max-w-7xl mx-auto flex flex-col md:flex-row justify-between items-center gap-6">
            <div className="text-slate-500 text-sm">
                <p>&copy; {new Date().getFullYear()} BirdSpec AI. All rights reserved.</p>
                <p className="mt-2 text-xs text-slate-600">
                    Patent Pending US-2024-AI-BIRD. Data provided by Global Avian Database.
                </p>
            </div>
            <div className="flex gap-8 text-sm text-slate-400">
                <Link href="#" className="hover:text-green-500">Privacy Policy</Link>
                <Link href="#" className="hover:text-green-500">Terms of Service</Link>
                <Link href="#" className="hover:text-green-500">Contact Support</Link>
            </div>
        </div>
      </footer>
    </div>
  );
}

// --- SUBCOMPONENTS ---

// --- UPDATED PRICING CARD (Fixes Clipping Issue) ---

function PricingCard({ title, price, period, description, features, isPopular = false, comingSoon = false }: any) {
    return (
        <div className={`relative p-8 rounded-2xl border flex flex-col transition-all duration-300 group
            ${comingSoon 
                ? 'bg-slate-950/50 border-slate-800/50 opacity-90 hover:opacity-100' 
                : 'bg-slate-950 border-slate-800 hover:border-slate-700'
            }
            ${isPopular && !comingSoon ? 'bg-slate-900 border-green-500 shadow-2xl shadow-green-900/20 scale-105 z-10' : ''}
        `}>
            
            {/* 1. SEPARATE BACKGROUND LAYER (Handles Shimmer + Clipping) */}
            {/* We put overflow-hidden HERE instead of on the parent, so the badges can pop out freely */}
            <div className="absolute inset-0 rounded-2xl overflow-hidden -z-10">
                {comingSoon && (
                    <div className="absolute top-0 left-[-100%] w-[200%] h-full bg-gradient-to-r from-transparent via-blue-500/5 to-transparent animate-shimmer pointer-events-none"></div>
                )}
            </div>

            {/* 2. BADGES (Now sitting safely outside the clipping zone) */}
            {isPopular && !comingSoon && (
                <div className="absolute -top-4 left-1/2 -translate-x-1/2 bg-green-500 text-slate-950 text-xs font-bold px-3 py-1 rounded-full uppercase tracking-wide shadow-lg whitespace-nowrap">
                    Most Popular
                </div>
            )}
            {comingSoon && (
                <div className="absolute -top-3 left-1/2 -translate-x-1/2 bg-blue-600/20 border border-blue-500/50 text-blue-300 text-[10px] font-bold px-3 py-1 rounded-full uppercase tracking-widest backdrop-blur-md flex items-center gap-1 shadow-lg whitespace-nowrap z-20">
                    <span className="w-1.5 h-1.5 rounded-full bg-blue-400 animate-pulse"></span>
                    In Development
                </div>
            )}

            {/* 3. CARD CONTENT */}
            <h3 className={`text-xl font-bold ${comingSoon ? 'text-slate-400' : 'text-slate-100'}`}>{title}</h3>
            <div className="mt-4 mb-2 flex items-baseline">
                <span className={`text-4xl font-extrabold ${comingSoon ? 'text-slate-500' : 'text-white'}`}>{price}</span>
                {period && <span className="text-slate-600 ml-1">{period}</span>}
            </div>
            <p className="text-slate-400 text-sm mb-8 h-10 leading-relaxed">{description}</p>
            
            <ul className="space-y-4 mb-8 flex-1">
                {features.map((feat: string, i: number) => (
                    <li key={i} className={`flex items-start text-sm ${comingSoon ? 'text-slate-500' : 'text-slate-300'}`}>
                        <CheckCircle2 className={`w-5 h-5 mr-3 flex-shrink-0 ${comingSoon ? 'text-slate-700' : 'text-green-500'}`} />
                        {feat}
                    </li>
                ))}
            </ul>
            
            <Button 
                disabled={comingSoon}
                variant={isPopular ? "default" : "outline"} 
                className={`w-full rounded-lg py-6 transition-all font-semibold
                    ${comingSoon 
                        ? 'bg-slate-900 border-slate-800 text-slate-600 cursor-not-allowed hover:bg-slate-900' 
                        : isPopular 
                            ? 'bg-green-600 hover:bg-green-700 text-white shadow-lg hover:shadow-green-500/20' 
                            : 'border-slate-700 text-slate-300 hover:text-white hover:bg-slate-800'
                    }
                `}
            >
                {comingSoon ? "Join Waitlist" : "Get Started"}
            </Button>
        </div>
    )
}

function UseCase({ icon, title, text }: any) {
    return (
        <div className="flex flex-col items-center text-center space-y-4">
            <div className="p-4 rounded-full bg-slate-800/50 border border-slate-700 mb-2">
                {icon}
            </div>
            <h3 className="text-xl font-bold text-slate-200">{title}</h3>
            <p className="text-slate-400 leading-relaxed">{text}</p>
        </div>
    )
}