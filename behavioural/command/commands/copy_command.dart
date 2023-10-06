part of 'commands.dart';

class CopyCommand extends Command {
  CopyCommand({required super.app, required super.editor});

  @override
  bool execute() {
    String selection = editor.getSelection();
    print('Executing CopyCommand: Copying text "$selection" to clipboard');
    app.clipboard = selection;
    return false;
  }
}
