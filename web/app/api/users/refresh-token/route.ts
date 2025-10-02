import { NextRequest, NextResponse } from "next/server";
import { SignJWT, jwtVerify } from 'jose';
import User from "@/models/User";


async function generateNewAccessToken(user: any) {
    const secret = new TextEncoder().encode(process.env.ACCESS_TOKEN_SECRET!);
    const accessToken = await new SignJWT({
        _id: user._id.toString(),
        email: user.email,
        username: user.username,
    })
        .setProtectedHeader({ alg: 'HS256' })
        .setExpirationTime(process.env.ACCESS_TOKEN_EXPIRY!)
        .sign(secret);
    return accessToken;
}

export async function POST(request: NextRequest) {
    try {

        // get refresh token 
        const refreshToken = request.cookies.get('refreshToken')?.value
        if (!refreshToken) {
            return NextResponse.json({ error: "refresh token not found" }, { status: 401 })
        }
        // if you found the token just verify it

        const secret = new TextEncoder().encode(process.env.REFRESH_TOKEN_SECRET!);
        const { payload } = await jwtVerify(refreshToken, secret);
        // the problem here is, payload is usually an object that retuns some parameters, one of them is id, which ideally should be a string but in this case its a object and thats why we need to hardcode this into a string, this is something you can impove on in the next project


        // Add .toString() here to fix the error
        const userId = (payload as any)._id.toString();

        const user = await User.findById(userId);
        if (!user || user.refreshToken !== refreshToken) {
            return NextResponse.json({ error: "invalid refresh tokens" }, { status: 401 })
        }

        // now if all checks are complete, we can finally refresh the accesstokens

        const newAccessToken = await generateNewAccessToken(user);

        const options = {
            httpOnly: true, // does not allow the javascript in the browser to edit this json
            secure: true // sends the json over secure https so the data is not intercepted 
        }
        const response = NextResponse.json({
            message: "Access token refreshed successfully",
            success: true,
        })

        response.cookies.set("accessToken",newAccessToken,options)



        return response

    } catch (error: any) {
        return NextResponse.json({ error: "Refresh token expired or invalid" }, { status: 401 });
    }
}