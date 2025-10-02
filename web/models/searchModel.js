import mongoose from "mongoose";

const searchSchema = new mongoose.Schema({
    imageUrl: {
        type: String,
        required: true,
    },
    detectionResult: {
        // e.g., "American Robin", "Blue Jay"
        type: String, 
        required: true,
    },
    confidenceScore: {
        type: Number,
    },
    // This is the link back to the User model
    user: {
        type: mongoose.Schema.Types.ObjectId,
        ref: 'users', // This must match the model name you used for User
        required: true,
        index: true // Adding an index makes lookups by user very fast
    }
}, { timestamps: true }); // `timestamps` automatically adds `createdAt` and `updatedAt`

const Search = mongoose.models.searches || mongoose.model("searches", searchSchema);

export default Search;