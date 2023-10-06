import 'user.dart';

abstract class Handler {
  void set nextHandler(Handler value);
  void handleRequest(User user);
}
