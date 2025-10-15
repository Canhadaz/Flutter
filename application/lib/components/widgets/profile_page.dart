import 'package:flutter/material.dart';
import '../models/user.dart';

class ProfileImages extends StatelessWidget {
  final User user;

  const ProfileImages({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(user.bannerImage),
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          bottom: -32, // metade da altura da imagem para sobrepor
          left: 16,
          child: CircleAvatar(
            radius: 32,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 32,
              backgroundImage: AssetImage(user.profileImage),
            ),
          ),
        ),
      ],
    );
  }
}

// ===================== PROFILE DESCRIPTION =====================
class ProfileDescription extends StatelessWidget {
  final User user;

  const ProfileDescription({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 34, 16, 16), // deixa espaço pra foto
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            user.name,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            '@${user.id}',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Nascido em ${user.birthDate}',
            style: const TextStyle(
              fontSize: 10,
              color: Colors.white70,
            ),
          ),
          Text(
            'Entrou em ${user.birthDate}', // se houver outra data, use user.accountDate
            style: const TextStyle(
              fontSize: 10,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Text(
                '${user.following} Seguindo',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(width: 16),
              Text(
                '${user.followers} Seguidores',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white70,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileBanner extends StatelessWidget {
  final User user;
  const ProfileBanner({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileImages(user: user),
        ProfileDescription(user: user),
      ],
    );
  }
}