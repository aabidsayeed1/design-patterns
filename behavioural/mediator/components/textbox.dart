part of 'components.dart';

class Textbox extends Component {
  Textbox({required this.placeholder, required Mediator dialog})
      : super(dialog);

  String placeholder;
}
