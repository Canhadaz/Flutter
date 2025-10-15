class User {
  final String name;
  final String id;
  final String birthDate;
  final String profileImage;
  final String bannerImage;
  final String followers;
  final String following;

  const User({
    required this.name,
    required this.id,
    required this.birthDate,
    required this.profileImage,
    required this.bannerImage,
    required this.followers,
    required this.following,
  });
}