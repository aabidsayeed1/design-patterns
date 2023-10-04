// component interface

abstract class Notifier {
  void send(String message);
}

// concrete component

class EmailNotifier implements Notifier {
  @override
  void send(String message) {
    print('Sending email notification: $message');
  }
}
