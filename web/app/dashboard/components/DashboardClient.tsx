"use client";

import React, { useState, useEffect } from "react";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Input } from "@/components/ui/input";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import { Badge } from "@/components/ui/badge";
import { toast } from "react-hot-toast";
import axiosInstance from "@/helpers/axiosInstance";
import Image from "next/image";

interface SearchHistory {
  _id: string;
  imageUrl: string;
  detectionResult: string;
  confidenceScore: number;
  createdAt: string;
}

export default function DashboardClient() {
  const [history, setHistory] = useState<SearchHistory[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [selectedFile, setSelectedFile] = useState<File | null>(null);
  const [isUploading, setIsUploading] = useState(false);

  useEffect(() => {
    const fetchHistory = async () => {
      try {
        setIsLoading(true);
        const response = await axiosInstance.get("/api/searches");
        setHistory(response.data.history);
      } catch (error) {
        toast.error("Could not load your search history.");
      } finally {
        setIsLoading(false);
      }
    };
    fetchHistory();
  }, []);

  const handleFileChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files) {
      setSelectedFile(e.target.files[0]);
    }
  };

  const handleSearchSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    if (!selectedFile) {
      toast.error("Please select an image first.");
      return;
    }

    try {
      setIsUploading(true);
      const formData = new FormData();
      formData.append("image", selectedFile);

      const response = await axiosInstance.post("/api/detect", formData, {
        headers: { "Content-Type": "multipart/form-data" },
      });

      setHistory([response.data.newSearch, ...history]);
      setSelectedFile(null);
      (e.target as HTMLFormElement).reset();
      toast.success("Bird detected successfully!");
    } catch (error) {
      toast.error("Failed to detect bird species.");
    } finally {
      setIsUploading(false);
    }
  };

  return (
    <main className="grid gap-8">
      <div className="mb-8">
        <h1 className="text-3xl font-bold text-gray-900 dark:text-gray-50">
          Your Dashboard
        </h1>
        <p className="text-gray-500 dark:text-gray-400">
          Upload an image to detect a bird species or view your history below.
        </p>
      </div>

      <div className="grid gap-8 md:grid-cols-2">
        <section>
          <Card>
            <CardHeader>
              <CardTitle>New Bird Detection</CardTitle>
              <CardDescription>
                Upload a clear image of a bird.
              </CardDescription>
            </CardHeader>
            <CardContent>
              <form onSubmit={handleSearchSubmit} className="space-y-4">
                <Input
                  type="file"
                  onChange={handleFileChange}
                  accept="image/*"
                  required
                />
                <Button type="submit" className="w-full" disabled={isUploading}>
                  {isUploading ? "Detecting..." : "Detect Species"}
                </Button>
              </form>
            </CardContent>
          </Card>
        </section>

        <section>
          <Card>
            <CardHeader>
              <CardTitle>Search History</CardTitle>
              <CardDescription>
                Your most recent detections.
              </CardDescription>
            </CardHeader>
            <CardContent>
              {isLoading ? (
                <p>Loading history...</p>
              ) : history.length === 0 ? (
                <p>You have no search history yet.</p>
              ) : (
                <Table>
                  <TableHeader>
                    <TableRow>
                      <TableHead>Image</TableHead>
                      <TableHead>Result</TableHead>
                      <TableHead>Confidence</TableHead>
                      <TableHead>Date</TableHead>
                    </TableRow>
                  </TableHeader>
                  <TableBody>
                    {history.map((item) => (
                      <TableRow key={item._id}>
                        <TableCell>
                          <Image
                            src={item.imageUrl}
                            alt={item.detectionResult}
                            width={50}
                            height={50}
                            className="rounded-md object-cover"
                          />
                        </TableCell>
                        <TableCell className="font-medium">
                          {item.detectionResult}
                        </TableCell>
                        <TableCell>
                          <Badge variant="secondary">
                            {(item.confidenceScore * 100).toFixed(1)}%
                          </Badge>
                        </TableCell>
                        <TableCell>
                          {new Date(item.createdAt).toLocaleDateString()}
                        </TableCell>
                      </TableRow>
                    ))}
                  </TableBody>
                </Table>
              )}
            </CardContent>
          </Card>
        </section>
      </div>
    </main>
  );
}