part of 'handlers.dart';

class AuthorisationHandler extends BaseHandler {
  @override
  void handleRequest(String email, String password) {
    if (_authoriseUser(email)) {
      print("Permission verification passed. Access granted.");
      super.handleRequest(email, password);
    } else {
      print("Insufficient permissions. Access denied.");
    }
  }

  bool _authoriseUser(String email) {
    return email.toLowerCase().contains("admin");
  }
}
