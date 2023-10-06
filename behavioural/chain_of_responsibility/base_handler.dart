import 'user.dart';

abstract class BaseHandler {
  BaseHandler? _next;

  void set nextHandler(BaseHandler next) => _next = next;

  void handleRequest(User user) {
    if (_next != null) _next!.handleRequest(user);
  }

  static BaseHandler createChain(List<BaseHandler> handlers) {
    for (int i = 0; i < handlers.length - 1; i++) {
      handlers[i].nextHandler = handlers[i + 1];
    }
    return handlers.first;
  }
}
