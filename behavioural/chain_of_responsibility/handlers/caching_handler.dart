part of 'handlers.dart';

class CachingHandler extends BaseHandler {
  final Map<String, String> _cache = {};

  @override
  void handleRequest(User user) {
    final requestKey = _getRequestKey(user.email, user.password);

    if (!_isCached(requestKey)) {
      super.handleRequest(user);
      _cache[requestKey] = "Response for $requestKey";
      print("Request result cached.");
    } else {
      print("Request served from cache.");
    }
  }

  String _getRequestKey(String email, String password) => '$email:$password';

  bool _isCached(String key) => _cache.containsKey(key);
}
