import {connect} from "@/dbConfig/dbConfig";
import User from "@/models/User";
import { NextRequest, NextResponse } from "next/server";
import bcryptjs from "bcryptjs";

connect()

export async function POST(request: NextRequest) {
    try {
        const {email,password} = await request.json()
        if(!email.trim() || ! password.trim()){
            return NextResponse.json({error : "email and password are required!"},{status: 400})
        }
        const user = await User.findOne({email})
      
        if(!user){
            return NextResponse.json({error : "this user is not registered!"},{status : 400})
        }

        if (!user.isVerified) {
            return NextResponse.json(
                { error: "Please verify your email before logging in." },
                { status: 403 } // 403 Forbidden is a good status code for this
            );
        }

        const isPassword = await bcryptjs.compare(password, user.password)
        if(!isPassword){
            return NextResponse.json({error : "invalid credentials!"},{status : 400})
        }
        // tokens 
        const {accessToken,refreshToken} =  await user.generateAccessAndRefreshTokens()
        user. refreshToken = refreshToken

        const options = {
        httpOnly: true, // does not allow the javascript in the browser to edit this json
        secure: true // sends the json over secure https so the data is not intercepted 
    }
        const response =  NextResponse.json({
              message: "Login successful",
            success: true,
        })

        response.cookies.set("accessToken",accessToken,options)
        response.cookies.set("refreshToken",refreshToken,options)

        
        return response
    } catch (error : any) {
        return NextResponse.json({error : error.message } , {status : 500})
    }
}