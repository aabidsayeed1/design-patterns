import 'application.dart';
import 'editor.dart';

void main() {
  Editor editor = Editor();
  Application app = Application(editor: editor);

  app.createUI();

  // Simulate button presses
  print('PRESS COPY BUTTON');
  app.copyButton?.pressButton();

  print('\nPRESS CUT BUTTON');
  app.cutButton?.pressButton();

  print('PRESS PASTE BUTTON');
  app.pasteButton?.pressButton();

  print('KEEP PRESSING UNDO BUTTON');
  app.undoButton?.pressButton();
  app.undoButton?.pressButton();
  app.undoButton?.pressButton();
}
