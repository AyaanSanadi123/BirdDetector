import mongoose from "mongoose";
import bcrypt from "bcryptjs";
import { SignJWT, jwtVerify } from 'jose';
const userSchema = new mongoose.Schema({
    username: {
        type: String,
        required: [true, "Please provide a username"],
        unique: true,
    },
    email: {
        type: String,
        required: [true, "Please provide a email"],
        unique: true,
    },
    password: {
        type: String,
        required: [true, "Please provide a password"],
    },
    isVerified: {
        type: Boolean,
        default: false,
    },
    refreshToken: {
        type: String
    },
    forgotPasswordToken: String,
    forgotPasswordTokenExpiry: Date,
    verifyToken: String,
    verifyTokenExpiry: Date,
})



// ... inside userModel.js, after the schema definition

userSchema.pre("save", async function (next) {
    // Only run this function if password was actually modified
    if (!this.isModified("password")) {
        return next();
    }
    try {
        const salt = await bcrypt.genSalt(10);
        this.password = await bcrypt.hash(this.password, salt);
        return next();
    } catch (error) {
        return next(error);
    }
});


userSchema.methods.generateAccessAndRefreshTokens = async function () {
    try {
        let secret = new TextEncoder().encode(process.env.ACCESS_TOKEN_SECRET);

        // Create the Access Token using jose
        const accessToken = await new SignJWT({
            _id: this._id.toString(),
            email: this.email,
            username: this.username
        })
            .setProtectedHeader({ alg: 'HS256' })
            .setExpirationTime(process.env.ACCESS_TOKEN_EXPIRY)
            .sign(secret);

        secret = new TextEncoder().encode(process.env.REFRESH_TOKEN_SECRET);
        const refreshToken = await new SignJWT({
            _id: this._id.toString(),
        })
            .setProtectedHeader({ alg: 'HS256' })
            .setExpirationTime(process.env.REFRESH_TOKEN_EXPIRY)
            .sign(secret);

        return { accessToken, refreshToken }
    } catch (error) {
        console.error("Error generating tokens:", error);
    }

}




const User = mongoose.models.users || mongoose.model("users", userSchema);
export default User;