import { getDataFromToken } from "@/helpers/getDataFromToken";
import { NextRequest, NextResponse } from "next/server";
import User from "@/models/User";
import { connect } from "@/dbConfig/dbConfig";

connect();

export async function GET(request: NextRequest) {
    try {
        // 1. Get the user ID from the token
        const userId = await getDataFromToken(request);
        
        // 2. Find the user in the database, excluding the password
        const user = await User.findOne({ _id: userId }).select("-password");

        if (!user) {
            return NextResponse.json({ error: "User not found" }, { status: 404 });
        }
        
        // 3. Return the user data
        return NextResponse.json({
            message: "User found",
            data: user
        });

    } catch (error: any) {
        return NextResponse.json({ error: error.message }, { status: 401 }); // 401 for unauthorized
    }
}