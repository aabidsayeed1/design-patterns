import 'handler_interface.dart';
import 'user.dart';

abstract class BaseHandler implements Handler {
  Handler? _next;

  void set nextHandler(Handler next) => _next = next;

  void handleRequest(User user) {
    if (_next != null) _next!.handleRequest(user);
  }
}
