'use client';

import { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
// --- CHANGE 1: Import the new browser-specific client helper ---
import { createClient } from '@/lib/supabase/client';
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Bird, Loader2 } from 'lucide-react';

export default function LoginPage() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const router = useRouter();
  // --- CHANGE 2: Initialize the client here ---
  const supabase = createClient();

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsLoading(true);

    try {
      const { data, error } = await supabase.auth.signInWithPassword({
        email,
        password,
      });

      if (error) {
        throw error;
      }

      console.log("Login successful:", data.user?.email);

      // --- CHANGE 3: Standard Next.js redirect now works because cookies are set correctly ---
      router.push('/dashboard');
      // Refresh ensures server components re-run with the new auth state
      router.refresh(); 

    } catch (error: any) {
      alert('Login failed: ' + error.message);
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <div className="min-h-screen flex items-center justify-center bg-slate-950 p-4">
      <Card className="w-full max-w-md bg-slate-900 border-slate-800">
        <CardHeader className="space-y-1">
          <div className="flex items-center gap-2 justify-center mb-4">
            <Bird className="text-green-500 w-8 h-8" />
            <CardTitle className="text-2xl text-white">BirdSpec</CardTitle>
          </div>
          <CardTitle className="text-xl text-white text-center">Welcome back</CardTitle>
          <CardDescription className="text-center">
            Enter your email to sign in to your account.
          </CardDescription>
        </CardHeader>
        <form onSubmit={handleLogin}>
          <CardContent className="space-y-4">
            <div className="space-y-2">
              <Label htmlFor="email" className="text-white">Email</Label>
              <Input 
                id="email" 
                type="email" 
                placeholder="m@example.com"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
                className="bg-slate-800 border-slate-700 text-white"
              />
            </div>
            <div className="space-y-2">
              <Label htmlFor="password" className="text-white">Password</Label>
              <Input 
                id="password" 
                type="password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
                className="bg-slate-800 border-slate-700 text-white"
              />
            </div>
          </CardContent>
          <CardFooter className="flex flex-col space-y-4">
            <Button 
                type="submit" 
                className="w-full bg-green-600 hover:bg-green-700"
                disabled={isLoading}
            >
              {isLoading && <Loader2 className="mr-2 h-4 w-4 animate-spin" />}
              Sign In
            </Button>
            <div className="text-sm text-center text-slate-400">
              Don't have an account?{' '}
              <Link href="/signup" className="text-green-400 hover:underline">
                Sign up
              </Link>
            </div>
          </CardFooter>
        </form>
      </Card>
    </div>
  );
}