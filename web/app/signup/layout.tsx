import React from "react";

export default function SignupLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <main className="flex min-h-screen flex-col items-center justify-center p-4 signup-background">
      {/* This is where your signup page.tsx will be rendered */}
      {children}
    </main>
  );
}