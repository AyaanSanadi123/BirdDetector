// web/app/signup/page.tsx
'use client';

import { useState } from 'react';
import Link from 'next/link';
import { useRouter } from 'next/navigation';
import { supabase } from '@/lib/superbase'; 
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardDescription, CardFooter, CardHeader, CardTitle } from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Bird, Loader2 } from 'lucide-react';

export default function SignupPage() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [fullName, setFullName] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const router = useRouter();

  const handleSignup = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsLoading(true);

    // Get the base URL of the application (e.g., http://localhost:3000)
    // This ensures it works both locally and when deployed.
    const origin = window.location.origin;

    try {
      // We pass full_name in data so the database trigger can use it
      const { data, error } = await supabase.auth.signUp({
        email,
        password,
        options: {
          data: {
            full_name: fullName,
          },
          // --- CRITICAL FIX ---
          // Tell Supabase to redirect to our callback route after verification.
          // This allows the session cookie to be set correctly.
          emailRedirectTo: `${origin}/auth/callback`, 
        },
      });

      if (error) {
        throw error;
      }

      // Check if a session was created immediately (e.g. if email confirmations are off)
      if (data.session) {
          router.push('/dashboard');
          router.refresh();
      } else if (data.user) {
          // Standard flow: User created, needs to confirm email
          alert("Account created successfully! Please check your email to confirm your registration before logging in.");
          // Redirect to login page so they are ready after confirming
          router.push('/login');
      }

    } catch (error: any) {
      alert('Signup failed: ' + error.message);
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
          <CardTitle className="text-xl text-white text-center">Create an account</CardTitle>
          <CardDescription className="text-center">
            Enter your details to get started.
          </CardDescription>
        </CardHeader>
        <form onSubmit={handleSignup}>
          <CardContent className="space-y-4">
          <div className="space-y-2">
              <Label htmlFor="fullName" className="text-white">Full Name</Label>
              <Input 
                id="fullName" 
                type="text" 
                placeholder="John Doe"
                value={fullName}
                onChange={(e) => setFullName(e.target.value)}
                required
                className="bg-slate-800 border-slate-700 text-white"
              />
            </div>
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
                minLength={6}
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
              Sign Up
            </Button>
            <div className="text-sm text-center text-slate-400">
              Already have an account?{' '}
              <Link href="/login" className="text-green-400 hover:underline">
                Sign in
              </Link>
            </div>
          </CardFooter>
        </form>
      </Card>
    </div>
  );
}