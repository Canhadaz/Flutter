import 'package:flutter/material.dart';
import '../models/user.dart';

class Post extends StatefulWidget {
  final User user;
  final String content;

  const Post({super.key, required this.user, required this.content});

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  int comments = 0;
  int retweets = 0;
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ===== Row principal: Avatar + Conteúdo =====
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage(widget.user.profileImage),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Nome e ID
                    Row(
                      children: [
                        Text(
                          widget.user.name,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          widget.user.id,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    // Conteúdo do post
                    Text(
                      widget.content,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: 8),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _PostButton(
                icon: Icons.chat_bubble_outline,
                count: comments,
                color: Colors.white70,
                onTap: () => setState(() => comments++),
              ),
              _PostButton(
                icon: Icons.repeat,
                count: retweets,
                color: Colors.white70,
                onTap: () => setState(() => retweets++),
              ),
              _PostButton(
                icon: Icons.favorite_border,
                count: likes,
                color: Colors.white70,
                onTap: () => setState(() => likes++),
              ),
              _PostButton(
                icon: Icons.share,
                count: 0,
                color: Colors.white70,
                onTap: () {
                  // Aqui você pode implementar o compartilhamento futuramente
                },
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}

// ===== Botão do Post (Stateless) =====
class _PostButton extends StatelessWidget {
  final IconData icon;
  final int count;
  final Color color;
  final VoidCallback onTap;

  const _PostButton({
    super.key,
    required this.icon,
    required this.count,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: onTap,
      child: Row(
        children: [
          Icon(icon, size: 14, color: color),
          if (count > 0) ...[
            const SizedBox(width: 4),
            Text(
              count.toString(),
              style: TextStyle(color: color, fontSize: 12),
            ),
          ],
        ],
      ),
    );
  }
}