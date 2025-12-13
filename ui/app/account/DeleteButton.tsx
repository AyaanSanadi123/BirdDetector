'use client';

import { useTransition } from 'react';
import { Trash2 } from 'lucide-react';
import { Button } from "@/components/ui/button";
import { deleteAccount } from '@/app/auth/actions';

export default function DeleteButton() {
  const [isPending, startTransition] = useTransition();

  const handleDelete = () => {
    const confirm = window.confirm("Are you sure? This will permanently delete your account and all data.");
    if (confirm) {
      startTransition(async () => {
         await deleteAccount();
      });
    }
  };

  return (
    <Button 
        onClick={handleDelete}
        disabled={isPending}
        variant="destructive" 
        className="w-full justify-start bg-red-950/30 text-red-500 hover:bg-red-900/50 hover:text-red-400 border border-red-900/50 h-12 text-base"
    >
        <Trash2 className="mr-3 h-4 w-4" />
        {isPending ? "Deleting..." : "Delete Account Permanently"}
    </Button>
  );
}