import 'decorator.dart';
import 'notifier.dart';

void main() {
  final baseNotifier = EmailNotifier();

  NotifierDecorator decorator = SMSDecorator(baseNotifier);
  decorator = FacebookDecorator(decorator);
  decorator = SlackDecorator(decorator);

  decorator.send('Emergency: Server is down!');
}
