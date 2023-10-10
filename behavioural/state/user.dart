enum UserRoles { admin, author, moderator, reader }

class User {
  User({required this.username, required this.role});

  UserRoles role;
  String username;

  bool get isAdmin => role == UserRoles.admin;
  bool get isAuthor => role == UserRoles.author;
  bool get isModerator => role == UserRoles.moderator;
}
