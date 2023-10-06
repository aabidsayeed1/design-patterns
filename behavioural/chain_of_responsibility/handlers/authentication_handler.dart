part of 'handlers.dart';

class AuthenticationHandler extends BaseHandler {
  @override
  void handleRequest(String email, String password) {
    if (_authenticateUser(email, password)) {
      print("Authentication succeeded.");
      super.handleRequest(email, password);
    } else {
      print("Authentication failed. Access denied.");
    }
  }

  bool _authenticateUser(String email, String password) {
    List<String> users = ['admin@gmail.com, user@gmail.com'];
    return users.contains(email.toLowerCase()) && password.isNotEmpty;
  }
}
