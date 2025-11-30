import { Request, Response } from "express";
import Comment from "../models/post.js";

export async function createComment(req: Request, res: Response) {
    try {
        // função de criar os comentários (ent chama essa porra aq)
        const comments = await Comment.create(req.body);
        return res.json(comments);
    }catch(error) {
        return res.status(500).json({ error: "Erro ao criar comentário" });
    }}

export async function listComment(req: Request, res: Response) {
    try {
        // retorna a lsita de comentários
        const comments = await Comment.find({postId: req.params.postId});
        return res.json(comments);
    } catch (error) {
        return res.status(500).json({ error: "Erro ao listar os comentários" });
    }}
