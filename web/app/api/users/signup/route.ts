import { connect } from "@/dbConfig/dbConfig";
import { NextRequest, NextResponse } from "next/server";
import User from "@/models/User";
import bcryptjs from "bcryptjs";
import { generateTemporaryToken } from "@/helpers/tokenHelper";
import { sendEmail } from "@/helpers/mailer";





connect()



export async function POST(request: NextRequest) {
    try {
        const { email, password, username } = await request.json()
        if (!username.trim() || !email.trim() || !password.trim()) {
            return NextResponse.json({ error: "username,email and password are not required!!" }, { status: 404 })
        }
        // check if the user exists

        const isEmail = await User.findOne({ email })

        if (isEmail) {
            return NextResponse.json({ error: "user already exists!!" }, { status: 400 })
        }
        const { unHashedToken, hashedToken, tokenExpiry } = await generateTemporaryToken() // for email verification
        
        const newUser = new User({ // Using new User() or User.create() both work
            username,
            email,
            password: password, // <-- Pass the PLAIN password directly
            verifyToken: hashedToken,
            verifyTokenExpiry: tokenExpiry,
        });

        const user = await newUser.save();
        
        


        await sendEmail({ email, emailType: "VERIFY", unHashedToken })

        return NextResponse.json({
            message: "User created successfully",
            success: true,
            user
        })

    } catch (error: any) {
        return NextResponse.json({ error: error.message }, { status: 500 })
    }
}