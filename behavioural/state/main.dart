import 'document.dart';
import 'user.dart';

User currentUser = User(username: 'Admin', role: UserRoles.admin);

void main() {
  final document = Document();

  final admin = User(username: 'Admin', role: UserRoles.admin);
  final author = User(username: 'Author', role: UserRoles.author);
  final moderator = User(username: 'Moderator', role: UserRoles.moderator);
  final reader = User(username: 'Reader', role: UserRoles.reader);

  print('User: Admin');
  currentUser = admin;

  document.publish();
  document.render();

  print('\nUser: Author');
  currentUser = author;

  document.publish();
  document.render();

  document.publicationExpired();

  document.publish();
  document.publish();
  document.render();
  document.reviewFailed();

  print('\nUser: Moderator');
  currentUser = moderator;

  document.publish();
  document.render();
  document.reviewFailed();
  document.publish();
  document.render();

  print('\nUser: Reader');
  currentUser = reader;

  document.publish();
  document.render();

  print('\nUser: Admin');
  currentUser = admin;
  document.publish();

  print('\nUser: Reader');
  currentUser = reader;
  document.render();
}
