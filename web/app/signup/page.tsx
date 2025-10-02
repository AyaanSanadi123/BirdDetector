"use client";
import React, { useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { toast } from "react-hot-toast";
import { useRouter } from "next/navigation";
import Link from "next/link";
import axiosInstance from "@/helpers/axiosInstance";

export default function SignUpPage() {
  // Renamed from SignInPage for clarity
  const router = useRouter();

  const [user, setUser] = useState({
    username: "",
    email: "",
    password: "",
  });

  const [disableButton, setDisableButton] = useState(true);
  const [loading, setLoading] = useState(false);

  // FIX 1: This function now correctly accepts the form event
  const handleSubmit = async (event: React.FormEvent<HTMLFormElement>) => {
    event.preventDefault(); // And prevents the default page reload
    try {
      setLoading(true);
      await axiosInstance.post("/api/users/signup", user);
      toast.success("Signup successful! Please verify your email.");
      router.push("/verifyemail");
    } catch (error: any) {
      console.error("Signup failed:", error.response?.data || error.message);

      // Use the specific error message from your API if it exists
      const errorMessage =
        error.response?.data?.error || "Signup failed. Please try again.";

      toast.error(errorMessage);
    } finally {
      setLoading(false);
    }
  };

  // FIX 2: Create a dedicated function to handle input changes
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { id, value } = e.target;
    setUser((prevUser) => ({ ...prevUser, [id]: value }));
  };

  useEffect(() => {
    if (
      user.email.length > 0 &&
      user.password.length > 0 &&
      user.username.length > 0
    ) {
      setDisableButton(false);
    } else {
      setDisableButton(true);
    }
  }, [user]);

  return (
    <Card className="w-full max-w-md">
      <CardHeader className="space-y-1">
        <CardTitle className="text-2xl font-bold text-center">
          Create an Account
        </CardTitle>
        <CardDescription className="text-center">
          Enter your details below to sign up
        </CardDescription>
      </CardHeader>

      <form onSubmit={handleSubmit}>
        <CardContent className="grid gap-4">
          <div className="grid gap-2">
            <Label htmlFor="username">Username</Label>
            <Input
              id="username"
              type="text"
              placeholder="Your username"
              value={user.username}
              onChange={handleInputChange} // FIX 3: Wire inputs to the correct handler
              required
            />
          </div>
          <div className="grid gap-2">
            <Label htmlFor="email">Email</Label>
            <Input
              id="email"
              type="email"
              placeholder="name@example.com"
              value={user.email}
              onChange={handleInputChange} // FIX 3: Wire inputs to the correct handler
              required
            />
          </div>
          <div className="grid gap-2">
            <Label htmlFor="password">Password</Label>
            <Input
              id="password"
              type="password"
              placeholder="••••••••"
              value={user.password}
              onChange={handleInputChange} // FIX 3: Wire inputs to the correct handler
              required
            />
          </div>
          <Button
            type="submit"
            className="w-full"
            disabled={disableButton || loading}
          >
            {loading ? "Signing Up..." : "Sign Up"}
          </Button>
        </CardContent>
      </form>

      <CardFooter className="flex flex-col items-center">
        <p className="text-sm text-gray-500">
          Already have an account?{" "}
          <Link href="/login" className="underline hover:text-primary">
            Login
          </Link>
        </p>
      </CardFooter>
    </Card>
  );
}
