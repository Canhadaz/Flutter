import mongoose, { Schema, model } from "mongoose";

    // as variaveis de cada post
    const PostSchema = new Schema({
        usuario: String,
        mensagem: String,
});

export default mongoose.model("posts", PostSchema);
