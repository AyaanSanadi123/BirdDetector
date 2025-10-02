import { NextRequest } from "next/server";
import { jwtVerify } from 'jose';

export async function getDataFromToken(request: NextRequest) {
    try {
        const token = request.cookies.get("accessToken")?.value || "";
        if (!token) {
            throw new Error("No token found");
        }
        
        const secret = new TextEncoder().encode(process.env.ACCESS_TOKEN_SECRET!);
        
        const { payload } = await jwtVerify(token, secret);
        
        // The payload contains the user's ID
        return payload._id as string;

    } catch (error: any) {
        throw new Error(error.message);
    }
}