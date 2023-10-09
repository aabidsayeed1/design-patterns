import 'mediator.dart';

abstract class Component {
  Component(this.dialog);

  Mediator dialog;

  void click() => dialog.notify(this, Events.click);
  void keypress() => dialog.notify(this, Events.keypress);
}
