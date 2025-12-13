import { createClient } from '@/lib/supabase/server';
import { redirect } from 'next/navigation';
import Link from 'next/link';
import { LogOut, ArrowLeft, CreditCard, History, ShieldCheck, User } from 'lucide-react';
import { signOut } from '@/app/auth/actions'; 
import { Button } from "@/components/ui/button";
import DeleteButton from './DeleteButton'; // Import the button we just made

export default async function AccountPage() {
  const supabase = await createClient();

  // 1. Get User Session
  const { data: { user } } = await supabase.auth.getUser();
  if (!user) redirect('/login');

  // 2. Get Real Stats (Count total identifications)
  const { count } = await supabase
    .from('identifications')
    .select('*', { count: 'exact', head: true })
    .eq('user_id', user.id);

  const totalSightings = count || 0;
  const subscriptionTier = "Free Plan"; 

  return (
    <div className="min-h-screen bg-slate-950 text-slate-50 p-6">
      <div className="max-w-2xl mx-auto space-y-8">
        
        {/* Navigation Header */}
        <div className="flex items-center gap-4 mb-8">
          <Link href="/">
             <Button variant="ghost" size="icon" className="hover:bg-slate-800 text-slate-400">
                <ArrowLeft className="h-5 w-5" />
             </Button>
          </Link>
          <h1 className="text-3xl font-bold">My Account</h1>
        </div>

        {/* 1. Identity Card */}
        <div className="bg-slate-900 border border-slate-800 rounded-xl p-6 flex items-center gap-6 shadow-sm">
            <div className="h-20 w-20 bg-gradient-to-br from-green-600 to-emerald-800 rounded-full flex items-center justify-center text-3xl font-bold text-white shadow-lg border-4 border-slate-950">
                {user.email?.charAt(0).toUpperCase() || <User />}
            </div>
            <div>
                <h2 className="text-xl font-semibold text-white">
                    {user.user_metadata?.full_name || 'Bird Watcher'}
                </h2>
                <p className="text-slate-400">{user.email}</p>
                <div className="mt-2 flex items-center text-xs font-medium text-emerald-400 bg-emerald-950/30 border border-emerald-900/50 px-2 py-1 rounded w-fit">
                    <ShieldCheck className="w-3 h-3 mr-1" />
                    Verified User
                </div>
            </div>
        </div>

        {/* 2. Stats & Plan Grid */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            {/* Plan Status */}
            <div className="bg-slate-900 border border-slate-800 p-6 rounded-xl flex flex-col justify-between">
                <div className="flex items-start justify-between mb-4">
                    <div className="p-2 bg-blue-500/10 rounded-lg">
                        <CreditCard className="w-6 h-6 text-blue-400" />
                    </div>
                    <span className="text-[10px] font-bold bg-blue-500/10 text-blue-300 px-2 py-1 rounded border border-blue-500/20 uppercase tracking-wider">
                        Current
                    </span>
                </div>
                <div>
                    <p className="text-slate-400 text-sm mb-1">Subscription Tier</p>
                    <p className="text-2xl font-bold text-white">{subscriptionTier}</p>
                </div>
            </div>

            {/* History Link Card */}
            <Link href="/history" className="group bg-slate-900 border border-slate-800 p-6 rounded-xl flex flex-col justify-between hover:border-slate-700 hover:bg-slate-800/50 transition-all cursor-pointer">
                <div className="flex items-start justify-between mb-4">
                    <div className="p-2 bg-purple-500/10 rounded-lg">
                        <History className="w-6 h-6 text-purple-400" />
                    </div>
                    <ArrowLeft className="w-4 h-4 text-slate-600 rotate-180 group-hover:translate-x-1 transition-transform" />
                </div>
                <div>
                    <p className="text-slate-400 text-sm mb-1">Total Birds Identified</p>
                    <p className="text-2xl font-bold text-white group-hover:text-purple-300 transition-colors">{totalSightings}</p>
                </div>
            </Link>
        </div>

        {/* 3. Danger Zone */}
        <div className="space-y-4 pt-8 border-t border-slate-800">
            <h3 className="text-lg font-semibold text-slate-200">Session & Security</h3>
            
            <form action={signOut}>
                <Button variant="outline" className="w-full justify-start border-slate-700 hover:bg-slate-800 text-slate-300 hover:text-white h-12 text-base">
                    <LogOut className="mr-3 h-4 w-4" />
                    Sign Out
                </Button>
            </form>

            {/* The safe client component we created */}
            <DeleteButton />
        </div>

      </div>
    </div>
  );
}