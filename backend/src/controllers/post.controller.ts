import { Request, Response } from "express";
import Post from "../models/post.js";

export async function createPost(req: Request, res: Response) {
    try {
        // função de criar os posts (ent chama essa porra aq)
        const post = await Post.create(req.body);
        return res.json(post);
    }catch(error) {
        return res.status(500).json({ error: "Erro ao criar post" });
    }}

export async function listPosts(req: Request, res: Response) {
    try {
        // retorna a lsita de posts 
        const posts = await Post.find().sort({ createdAt: -1 });
        return res.json(posts);
    } catch (error) {
        return res.status(500).json({ error: "Erro ao listar posts" });
    }}
