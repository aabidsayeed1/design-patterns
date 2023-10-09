part of 'profile_iterator.dart';

class FacebookIterator implements ProfileIterator {
  final Facebook facebook;
  final String profileId;
  final ContactType type;

  int currentPosition = 0;
  List<Profile> cache = [];

  FacebookIterator({
    required this.facebook,
    required this.profileId,
    required this.type,
  });

  void lazyInit() {
    if (cache.isEmpty) {
      cache = facebook.socialGraphRequest(
        profileId: profileId,
        contactType: type,
      );
    }
  }

  @override
  bool hasMore() {
    lazyInit();
    return currentPosition < cache.length;
  }

  @override
  Profile? getNext() {
    return hasMore() ? cache[currentPosition++] : null;
  }
}
