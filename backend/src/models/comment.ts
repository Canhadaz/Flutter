import mongoose, { Schema, model } from "mongoose";

    const CommentSchema = new Schema({
        // pega o id de cada post
        postId: {type: mongoose.Schema.Types.ObjectId, ref: "posts", required: true}, 
        usuario: {type: String, required: true}, 
        mensagem: String,
});

export default mongoose.model("comments", CommentSchema);
