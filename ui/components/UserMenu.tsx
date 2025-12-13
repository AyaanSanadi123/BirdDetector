'use client';

import Link from 'next/link';
import { UserCircle } from 'lucide-react';
import { Button } from "@/components/ui/button";

export default function UserMenu({ email }: { email?: string }) {
  // We don't need complex dropdown logic here anymore.
  // Just a clean link to the Profile page.
  return (
    <Link href="/account">
        <Button variant="ghost" size="icon" className="text-slate-400 hover:text-white rounded-full hover:bg-slate-800">
            <UserCircle className="h-6 w-6" />
        </Button>
    </Link>
  );
}