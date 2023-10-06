abstract class Handler {
  void setNextHandler(Handler handler);
  void handleRequest(String email, String password);
}
