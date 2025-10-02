import User from "@/models/User";
import { NextRequest, NextResponse } from "next/server";
import { connect } from "@/dbConfig/dbConfig";
import {jwtVerify} from  'jose';

connect()



export async function DELETE(request: NextRequest) {
    try {
        const token = request.cookies.get("refreshToken")?.value ;
        if (!token) {
            return NextResponse.json({ error: "Token is expired or invalid" }, { status: 400 })
        }
        const secret = new TextEncoder().encode(process.env.REFRESH_TOKEN_SECRET!);
        const { payload } = await jwtVerify(token, secret)
        const user = await User.findByIdAndDelete(payload._id)
        if(!user){
            return NextResponse.json({error :" could not delete this account" },{status : 400})
        }

        const response = NextResponse.json({ message: "Account deleted" });
        response.cookies.set("refreshToken", "", { httpOnly: true, expires: new Date(0) });
        response.cookies.set("accessToken", "", { httpOnly: true, expires: new Date(0) });
        return response;
    } catch (error: any) {
        return NextResponse.json({ error: error.message }, { status: 500 });
    }
}