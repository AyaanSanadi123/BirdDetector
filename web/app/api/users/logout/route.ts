import { connect } from "@/dbConfig/dbConfig";
import User from "@/models/User";
import { NextRequest, NextResponse } from "next/server";
import { SignJWT, jwtVerify } from 'jose';
connect()

interface TokenPayload {
    _id: string;
    email: string;
    username: string;
}

export async function GET(request: NextRequest) {
    try {
        const token = request.cookies.get('accessToken')?.value;
        if (!token) {
            return NextResponse.json({ error: "token is required!" }, { status: 400 })
        }
        // verify the token 
        const secret = new TextEncoder().encode(process.env.ACCESS_TOKEN_SECRET!);
        const { payload } = await jwtVerify(token, secret)
        const decodedPayload = payload as any as TokenPayload;
        const user = await User.findById(decodedPayload._id)
        if (!user) {
            return NextResponse.json({ error: "user not found" }, { status: 400 })
        }

        user.refreshToken = ""

        await user.save({ validateBeforeSave: false })


        const options = {
            httpOnly: true,
            secure: true,
            expires: new Date(0) 
        }

        // clear the cookies 

        const response = NextResponse.json({
            message: "logout successful",
            success: true,
        })

        response.cookies.set("accessToken", "", options)
        response.cookies.set("refreshToken", "", options)

        return response


    } catch (error: any) {
        return NextResponse.json({ error: error.message }, { status: 500 })
    }
}