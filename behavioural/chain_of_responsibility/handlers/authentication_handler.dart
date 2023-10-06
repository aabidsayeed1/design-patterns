part of 'handlers.dart';

class AuthenticationHandler extends BaseHandler {
  @override
  void handleRequest(User user) {
    if (_authenticateUser(user.email, user.password)) {
      print("Authentication succeeded.");
      super.handleRequest(user);
    } else {
      print("Authentication failed. Access denied.");
    }
  }

  bool _authenticateUser(String email, String password) {
    List<String> users = ['admin@gmail.com, user@gmail.com'];
    return users.contains(email.toLowerCase()) && password.isNotEmpty;
  }
}
