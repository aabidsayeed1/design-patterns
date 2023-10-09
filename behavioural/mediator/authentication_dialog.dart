import 'component.dart';
import 'components/components.dart';
import 'mediator.dart';

class AuthenticationDialog implements Mediator {
  AuthenticationDialog({this.title = ""});

  String title;

  Checkbox? loginOrRegisterCheckbox;

  Textbox? loginUsername;
  Textbox? loginPassword;

  Textbox? registrationUsername;
  Textbox? registrationPassword;
  Textbox? registrationEmail;

  Button? okButton;
  Button? cancelButton;

  void createDialog() {
    title = "Register";
    loginOrRegisterCheckbox = Checkbox(label: 'Login', dialog: this);
    loginUsername = Textbox(placeholder: 'Username', dialog: this);
    loginPassword = Textbox(placeholder: 'Password', dialog: this);
    registrationEmail = Textbox(placeholder: 'Email', dialog: this);
    registrationUsername = Textbox(placeholder: 'Username', dialog: this);
    registrationPassword = Textbox(placeholder: 'Password', dialog: this);
    cancelButton = Button(label: 'Cancel', dialog: this);
    okButton = Button(label: 'OK', dialog: this);
  }

  @override
  void notify(Component sender, Events event) {
    if (sender == loginOrRegisterCheckbox && event == Events.click) {
      _onCheckboxClicked();
    } else if (sender is Textbox && event == Events.keypress) {
      _onTextboxKeyPressed(sender);
    } else if (sender is Textbox && event == Events.click) {
      _onTextboxClicked(sender);
    } else if (sender == okButton && event == Events.click) {
      _onOkButtonClicked();
    } else if (sender == cancelButton && event == Events.click) {
      _onCancelButtonClicked();
    }
  }

  void _onTextboxKeyPressed(Textbox sender) {
    print('\nkey pressed on textbox ${sender.placeholder}');
  }

  void _onTextboxClicked(Textbox sender) {
    print('\ntextbox ${sender.placeholder} clicked on');
  }

  void _onCheckboxClicked() {
    if (loginOrRegisterCheckbox == null) return;

    print('\nCheckbox clicked');

    if (loginOrRegisterCheckbox!.checked) {
      title = "Log In";
      print('\ntitle set to $title');
      print('hiding registration form components');
      print('showing login form components \n');
    } else {
      title = "Register";
      print('\ntitle set to $title');
      print('hiding login form components');
      print('showing registration form components \n');
    }
  }

  void _onOkButtonClicked() {
    if (okButton == null) return;

    print('\nOK button clicked');

    loginOrRegisterCheckbox!.checked
        ? print('\nPerforming login...')
        : print('\nPerforming registration...');
  }

  void _onCancelButtonClicked() {
    print('\nCancel button clicked');
  }
}
