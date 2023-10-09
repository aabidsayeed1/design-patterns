import 'mediator.dart';

abstract class Component {
  Component({required this.dialog});

  Mediator dialog;

  void click() => dialog.notify(this, "click");
  void keypress() => dialog.notify(this, "keypress");
}
