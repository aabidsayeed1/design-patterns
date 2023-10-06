part of 'commands.dart';

class PasteCommand extends Command {
  PasteCommand({required super.app, required super.editor});

  @override
  bool execute() {
    print('Executing PasteCommand: Pasting text from clipboard');
    saveBackup();
    editor.replaceSelection(app.clipboard);
    return true;
  }
}
