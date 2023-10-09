import 'component.dart';

enum Events { click, keypress }

abstract class Mediator {
  void notify(Component sender, Events event);
}
