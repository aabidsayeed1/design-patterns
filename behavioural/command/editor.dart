// receiver

class Editor {
  String text = "";

  String getSelection() {
    return "Selected Text";
  }

  void deleteSelection() {
    print("Deleted Selected Text");
  }

  void replaceSelection(String text) {
    print("Replaced Selection with: $text");
  }
}
