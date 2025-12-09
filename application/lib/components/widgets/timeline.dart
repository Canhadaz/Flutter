import 'package:application/components/widgets/home.dart';
import 'package:flutter/material.dart';
import '../mockdata/general.dart';
import 'post.dart';
import '../models/user.dart';
class Timeline extends StatefulWidget {
  const Timeline({super.key});

  @override
  State<Timeline> createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  int visibleCount = 5;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Todos os posts, mantendo usuário correto via userId
    final totalPosts = allUsers.expand((user) => user.posts).toList();

    // Apenas os posts visíveis
    final visiblePosts = totalPosts.take(visibleCount).toList();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 8),
      body: Stack(
        children: [
          ListView.builder(
            itemCount: visiblePosts.length + 1, // +1 para avatar/banner
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).padding.top + 16,
                    left: 16,
                    right: 0,
                    bottom: 16,
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(currentUser.profileImage),
                    ),
                  ),
                );
              }

              final UserPost postData = visiblePosts[index - 1];

              // Buscar o usuário do post pelo userId
              final User postUser =
                  allUsers.firstWhere((user) => user.id == postData.userId);

              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 6),
                child: Column(
                  children: [
                    Post(
                      user: postUser,
                      content: postData.content,
                    ),
                    Divider(
                      color: const Color.fromARGB(115, 255, 255, 255),
                      thickness: 0.7,
                      height: 8,
                    ),
                  ],
                ),
              );
            },
          ),

          // Botão "Ver mais"
          if (visibleCount < totalPosts.length)
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Center(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      visibleCount += 6;
                    });
                  },
                  child: const Text(
                    'Ver mais',
                    style: TextStyle(
                      color: Color.fromARGB(190, 255, 255, 255),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;

            // Navegação para o perfil
            if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              );
            }
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: ''),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}