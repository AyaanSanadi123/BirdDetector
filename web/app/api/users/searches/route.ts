import { getDataFromToken } from "@/helpers/getDataFromToken";
import { NextRequest, NextResponse } from "next/server";
import Search from "@/models/searchModel";
import { connect } from "@/dbConfig/dbConfig";

connect();

export async function GET(request: NextRequest) {
    try {
        // 1. Get the current user's ID from their authentication token
        const userId = await getDataFromToken(request);

        // 2. Find all searches in the database that belong to this user
        // We sort by 'createdAt: -1' to get the most recent searches first
        const searchHistory = await Search.find({ user: userId }).sort({ createdAt: -1 });

        // 3. Return the found history
        return NextResponse.json({
            message: "Search history retrieved successfully",
            success: true,
            history: searchHistory,
        });

    } catch (error: any) {
        // This will catch errors if the token is invalid or has expired
        return NextResponse.json({ error: error.message }, { status: 401 });
    }
}