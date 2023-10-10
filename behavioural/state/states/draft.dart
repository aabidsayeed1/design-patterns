part of 'states.dart';

class Draft extends State {
  Draft({required super.document});

  @override
  void publish() {
    if (currentUser.isAdmin) {
      print("Moving from Draft to Published state.");
      document.setState(Published(document: document));
    } else if (currentUser.isAuthor) {
      print("Moving from Draft to Moderation state.");
      document.setState(Moderation(document: document));
    }
  }

  @override
  void render() {}
}
