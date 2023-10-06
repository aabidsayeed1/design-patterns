abstract class Handler {
  void set nextHandler(Handler value);
  void handleRequest(String email, String password);
}
