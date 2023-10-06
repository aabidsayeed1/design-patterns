import 'handler_interface.dart';

abstract class BaseHandler implements Handler {
  Handler? _next;

  void set next(Handler value) => _next = value;

  void handleRequest(String email, String password) {
    if (_next != null) _next!.handleRequest(email, password);
  }
}
