import 'mediator.dart';

// Interface/Abstract class

abstract class Component {
  Component(this.dialog);

  Mediator dialog;

  void click() => dialog.notify(this, Events.click);
  void keypress() => dialog.notify(this, Events.keypress);
}

// Concrete components

class Button extends Component {
  Button({required this.label, required Mediator dialog}) : super(dialog);
  String label;
}

class Checkbox extends Component {
  Checkbox({required this.label, required Mediator dialog}) : super(dialog);

  String label;
  bool checked = false;

  @override
  void click() {
    checked = !checked;
    super.click();
  }
}

class Textbox extends Component {
  Textbox({required this.placeholder, required Mediator dialog})
      : super(dialog);
  String placeholder;
}
