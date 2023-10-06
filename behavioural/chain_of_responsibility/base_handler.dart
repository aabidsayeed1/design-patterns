import 'handler_interface.dart';

abstract class BaseHandler implements Handler {
  Handler? _next;

  void set nextHandler(Handler next) => _next = next;

  void handleRequest(String email, String password) {
    if (_next != null) _next!.handleRequest(email, password);
  }
}
