import 'component.dart';

abstract class Mediator {
  void notify(Component sender, String event);
}
