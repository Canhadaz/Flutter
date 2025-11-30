import { Router } from "express";
import { createPost, listPosts} from "../controllers/post.controller.js";

const rota = Router();

    rota.post("/", createPost);

    rota.get("/", listPosts);

export default rota;
