class UserProfile {
  int? id;
  int user;
  String? bio;
  String? posts;
  String? avatar;
  String? backgroundImage;
  UserProfile({
    this.id,
    required this.user,
    this.bio,
    this.posts,
    this.avatar,
    this.backgroundImage,
  });
  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      id: json['id'],
      user: json['user'],
      bio: json['bio'],
      posts: json['posts'],
      avatar: json['avatar'],
      backgroundImage: json['backgroundImage'],
    );
  }
}
