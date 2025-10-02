import { connect } from "@/dbConfig/dbConfig";
import { NextRequest, NextResponse } from "next/server";
import User from "@/models/User";
import crypto from 'crypto'

connect()


export async function POST(request: NextRequest) {
    try {
        const { token } = await request.json()
        if (!token) {
            return NextResponse.json({ error: "Token is required!" }, { status: 400 })
        }
        // hash the token 
        const hashedToken = crypto
            .createHash('sha256')
            .update(token)
            .digest('hex');
        const user = await User.findOne({
            verifyToken: hashedToken,
            verifyTokenExpiry: { $gt: Date.now() }
        })
        if (!user) {
            return NextResponse.json({ error: "The token is invalid or expired!" }, { status: 500 })
        }

        // if the user is verified 

        user.isVerfied = true
        user.verifyToken = ""
        user.verifyTokenExpiry = undefined
        await user.save()


        return NextResponse.json({ message: "Email is verified successfully!", success: true })




    } catch (error: any) {
        return NextResponse.json({ error: error.message }, { status: 500 })
    }
}