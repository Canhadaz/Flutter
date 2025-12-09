class User {
  final String name;
  final String id;
  final String birthDate;
  final String profileImage;
  final String bannerImage;
  final String followers;
  final String following;
  final List<UserPost> posts;

  const User({
    required this.name,
    required this.id,
    required this.birthDate,
    required this.profileImage,
    required this.bannerImage,
    required this.followers,
    required this.following,
    required this.posts,
  });
}

class UserPost {
  final String userId;
  final String postId;
  final String content;

  const UserPost({
    required this.userId,
    required this.postId,
    required this.content,
  });
}