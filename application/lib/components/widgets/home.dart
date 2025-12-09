import 'package:flutter/material.dart';
import './profile_page.dart';
import '../mockdata/general.dart';
import 'post.dart';
import './timeline.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int visibleCount = 3; // mostra 5 posts no início

  @override
  Widget build(BuildContext context) {
    final visiblePosts = currentUser.posts.take(visibleCount).toList();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 8),
      body: Stack(
        children: [
          // ===== LISTA PRINCIPAL =====
          ListView.builder(
            itemCount: visiblePosts.length + 1, // +1 para o banner
            itemBuilder: (context, index) {
              if (index == 0) return const ProfileBanner(user: currentUser);

              final postContent = visiblePosts[index - 1].content;
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
                child: Column(
                  children: [
                    Post(user: currentUser, content: postContent),
                    Divider(
                      color: const Color.fromARGB(115, 255, 255, 255),
                      thickness: 0.7, // linha bem fina
                      height: 8,      // espaçamento entre posts
                      indent: 0,       // sem recuo
                      endIndent: 0,
                    ),
                  ],
                ),
              );
            },
          ),

          Positioned(
            top: MediaQuery.of(context).padding.top + 8, // evita status bar
            left: 16,
            child: CircleAvatar(
              backgroundColor: Colors.black54,
                child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Timeline()),
                ),
              ),
            ),
          ),

          if (visibleCount < currentUser.posts.length)
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      visibleCount += 6; // carrega mais posts
                    });
                  },
                  child: const Text(
                    'Ver mais',
                    style: TextStyle(
                        color: Color.fromARGB(190, 255, 255, 255)),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}