import express from "express";
import mongoose from "mongoose";
import cors from "cors";

import postRoutes from "./rotas/post.routes.js";
import commentRoutes from "./rotas/comment.routes.js";

const app = express();

    app.use(express.json());
    app.use(cors());

    mongoose.connect("mongodb://localhost:27017/flutter_social")
        // se der tudo certo 
        .then(() => console.log("ta conectado bb"))
        // se n conectar 
        .catch(error => console.error(error));

    // como o nome "use" ja diz nessa porra, isso chama as rotas do controller blz bb ?
    app.use("/posts", postRoutes);
    app.use("/comments", commentRoutes);
    // porta
    app.listen(3000);
