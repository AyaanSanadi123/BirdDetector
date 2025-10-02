"use client";
import { toast } from "react-hot-toast";

import { useRouter } from "next/navigation";
import Link from "next/link";
import React, { useEffect, useState } from "react";
import axiosInstance from "@/helpers/axiosInstance";

export default function VerifyEmailPage() {
  // now the way we are going to work on this is

  // get the token from the url, for that we need to configure the email service

  // for now lets manually just input the token in a form
  const router = useRouter();
  const [token, setToken] = useState("");
  const [verified, setVerified] = useState(false);
  const [loading, setLoading] = useState(false);
  // we need a error use state as a catch block is not very ui friendly

  const [error, setError] = useState(false);

  const handleVerify = async () => {
    try {
      setLoading(true);
      await axiosInstance.post("api/users/verifyemail", { token });
      setVerified(true);
    } catch (error: any) {
      setError(true);
      toast.error(error.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    const urlToken = window.location.search.split("=")[1];
    setToken(urlToken || "");
  }, []);

  useEffect(() => {
    if (token.length > 0) {
      handleVerify();
    }
  }, [token]);

  useEffect(() => {
    if (verified) {
      const timer = setTimeout(() => {
        router.push("/login");
      }, 2000); // Wait for 2 seconds (2000 milliseconds)

      // This is a cleanup function to prevent errors if the user navigates away
      return () => clearTimeout(timer);
    }
  }, [verified, router]);

  return (
    <div className="flex flex-col items-center justify-center min-h-screen py-2">
      <h1 className="text-4xl mb-4">Verify Email</h1>

      <div className="mt-4 text-center">
        {verified ? (
          // 1. Success State
          <div>
            <h2 className="text-2xl text-green-500">Email Verified!</h2>
            <Link href="/login" className="text-blue-600 hover:underline">
              Click here to Login
            </Link>
          </div>
        ) : error ? (
          // 2. Error State
          <div>
            <h2 className="text-2xl text-red-500">Verification Failed</h2>
            <p>The token might be invalid or expired.</p>
          </div>
        ) : (
          // 3. Loading State (and initial state before token is read)
          <h2 className="text-2xl animate-pulse">Verifying...</h2>
        )}
      </div>
    </div>
  );
}
