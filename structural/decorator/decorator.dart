import 'notifier.dart';

// Abstract decorator

abstract class NotifierDecorator implements Notifier {
  final Notifier _wrappedNotifier;

  NotifierDecorator(this._wrappedNotifier);

  @override
  void send(String message) {
    _wrappedNotifier.send(message);
  }
}

// Concrete decorators

class SMSDecorator extends NotifierDecorator {
  SMSDecorator(Notifier wrappedNotifier) : super(wrappedNotifier);

  @override
  void send(String message) {
    super.send(message);
    print('Sending SMS notification: $message');
  }
}

class FacebookDecorator extends NotifierDecorator {
  FacebookDecorator(Notifier wrappedNotifier) : super(wrappedNotifier);

  @override
  void send(String message) {
    super.send(message);
    print('Sending Facebook notification: $message');
  }
}

class SlackDecorator extends NotifierDecorator {
  SlackDecorator(Notifier wrappedNotifier) : super(wrappedNotifier);

  @override
  void send(String message) {
    super.send(message);
    print('Sending Slack notification: $message');
  }
}
