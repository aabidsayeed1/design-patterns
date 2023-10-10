part of 'states.dart';

class Moderation extends State {
  Moderation({required super.document});

  @override
  void publish() {
    if (currentUser.isAdmin) {
      print("Moving from Moderation to Published state.");
      document.setState(Published(document: document));
    } else {
      print("Insufficient permissions. You may not publish the document.");
    }
  }

  void reviewFailed() {
    if (currentUser.isAdmin || currentUser.isModerator) {
      print("Document review failed. Moving to Draft state.");
      document.setState(Draft(document: document));
    } else {
      print("You are not authorised to review the document.");
    }
  }

  @override
  void render() {
    if (currentUser.isAdmin ||
        currentUser.isAuthor ||
        currentUser.isModerator) {
      print("Rendering the Moderation document.");
    } else {
      print("You are not authorized to render this document.");
    }
  }
}
