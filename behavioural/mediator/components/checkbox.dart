part of 'components.dart';

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
