part of 'handlers.dart';

class AuthorisationHandler extends BaseHandler {
  @override
  void handleRequest(User user) {
    if (_authoriseUser(user.email)) {
      print("Permission verification passed. Access granted.");
      super.handleRequest(user);
    } else {
      print("Insufficient permissions. Access denied.");
    }
  }

  bool _authoriseUser(String email) {
    return email.toLowerCase().contains("admin");
  }
}
