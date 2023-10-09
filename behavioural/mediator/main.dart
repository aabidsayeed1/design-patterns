import 'mediator.dart';

void main() {
  final dialog = AuthenticationDialog();
  dialog.createDialog();

  // Simulate interaction with UI

  dialog.loginOrRegisterCheckbox?.click();
  dialog.okButton?.click();
  dialog.cancelButton?.click();

  dialog.loginUsername?.keypress();

  dialog.loginOrRegisterCheckbox?.click();
  dialog.okButton?.click();
}
