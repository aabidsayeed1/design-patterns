import 'collections/social_network.dart';
import 'iterators/profile_iterator.dart';
import 'profile.dart';

class SocialSpammer {
  final SocialNetwork network;

  SocialSpammer({required this.network});

  void sendSpamToFriends(String profileId, String message) {
    print("\nIterating over friends...\n");
    final iterator = network.createFriendsIterator(profileId);
    _sendMessage(iterator, message);
  }

  void sendSpamToCoworkers(String profileId, String message) {
    print("\nIterating over coworkers...\n");
    final iterator = network.createCoworkersIterator(profileId);
    _sendMessage(iterator, message);
  }

  _sendMessage(ProfileIterator iterator, String message) {
    while (iterator.hasMore()) {
      Profile profile = iterator.getNext()!;
      print("To ${profile.id}, ${profile.name} \nMessage: $message");
    }
  }
}
