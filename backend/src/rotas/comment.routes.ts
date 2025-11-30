import { Router } from "express";
import { createComment, listComment } from "../controllers/comment.controller.js";

const rota = Router();

    rota.post("/", createComment);

    rota.get("/:postId", listComment);

export default rota;
