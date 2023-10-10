part of 'states.dart';

class Published extends State {
  Published({required super.document});

  @override
  void publish() {
    print("Document is already Published. No action needed.");
  }

  void publicationExpired() {
    print("Publication expired. Moving to Draft state");
    document.setState(Draft(document: document));
  }

  @override
  void render() {
    print("Rendering the Published document.");
  }
}
