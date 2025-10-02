"use client";

import React, { useState, useEffect } from "react";
import { useRouter } from "next/navigation";
import { Button } from "@/components/ui/button";
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from "@/components/ui/dropdown-menu";
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from "@/components/ui/alert-dialog";
import { User, LogOut, Trash2 } from "lucide-react";
import { toast } from "react-hot-toast";
import axiosInstance from "@/helpers/axiosInstance";

interface UserData {
  username: string;
  email: string;
  _id: string;
}

export default function DashboardHeader() {
  const router = useRouter();
  const [user, setUser] = useState<UserData | null>(null);
  const [isLoading, setIsLoading] = useState(true);
  const [isAlertOpen, setIsAlertOpen] = useState(false);

  useEffect(() => {
    const fetchUserDetails = async () => {
      try {
        const response = await axiosInstance.get("/api/users/me");
        setUser(response.data.data);
      } catch (error) {
        toast.error("Could not fetch user details. Please log in.");
        router.push("/login");
      } finally {
        setIsLoading(false);
      }
    };
    fetchUserDetails();
  }, [router]);

  const handleLogout = async () => {
    try {
      await axiosInstance.get("/api/users/logout");
      toast.success("Logged out successfully");
      router.push("/login");
    } catch (error: any) {
      toast.error(error.response?.data?.error || "Logout failed.");
    }
  };

  const handleDeleteAccount = async () => {
    try {
      await axiosInstance.delete("/api/users/deleteUser");
      toast.success("Account deleted successfully.");
      router.push("/signup");
    } catch (error: any) {
      toast.error(error.response?.data?.error || "Failed to delete account.");
    } finally {
      setIsAlertOpen(false);
    }
  };

  if (isLoading) {
    return (
      <header className="flex items-center justify-between w-full p-4 border-b bg-white dark:bg-gray-950">
        <div className="text-xl font-bold">BirdSpec</div>
        <div className="h-8 w-32 bg-gray-200 dark:bg-gray-800 rounded animate-pulse"></div>
      </header>
    );
  }

  return (
    <>
      <header className="flex items-center justify-between w-full p-4 border-b bg-white dark:bg-gray-950">
        <div className="text-xl font-bold">BirdSpec</div>
        <DropdownMenu>
          <DropdownMenuTrigger asChild>
            <Button variant="outline">
              <User className="w-4 h-4 mr-2" />
              {user?.username || "Account"}
            </Button>
          </DropdownMenuTrigger>
          <DropdownMenuContent align="end" className="w-56">
            <DropdownMenuLabel>{user?.email}</DropdownMenuLabel>
            <DropdownMenuSeparator />
            <DropdownMenuItem onSelect={handleLogout}>
              <LogOut className="w-4 h-4 mr-2" />
              <span>Logout</span>
            </DropdownMenuItem>
            <DropdownMenuItem onSelect={() => setIsAlertOpen(true)} className="text-red-600 focus:text-red-600">
              <Trash2 className="w-4 h-4 mr-2" />
              <span>Delete Account</span>
            </DropdownMenuItem>
          </DropdownMenuContent>
        </DropdownMenu>
      </header>

      <AlertDialog open={isAlertOpen} onOpenChange={setIsAlertOpen}>
        <AlertDialogContent>
          <AlertDialogHeader>
            <AlertDialogTitle>Are you absolutely sure?</AlertDialogTitle>
            <AlertDialogDescription>
              This action cannot be undone. This will permanently delete your
              account and remove all your data from our servers.
            </AlertDialogDescription>
          </AlertDialogHeader>
          <AlertDialogFooter>
            <AlertDialogCancel>Cancel</AlertDialogCancel>
            <AlertDialogAction onClick={handleDeleteAccount} className="bg-red-600 hover:bg-red-700">
              Continue
            </AlertDialogAction>
          </AlertDialogFooter>
        </AlertDialogContent>
      </AlertDialog>
    </>
  );
}