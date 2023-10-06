part of 'commands.dart';

class CutCommand extends Command {
  CutCommand({required super.app, required super.editor});

  @override
  bool execute() {
    print('Executing CutCommand: Cutting selected text');
    saveBackup();
    app.clipboard = editor.getSelection();
    editor.deleteSelection();
    return true;
  }
}
