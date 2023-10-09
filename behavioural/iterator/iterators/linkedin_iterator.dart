part of 'profile_iterator.dart';

class LinkedInIterator implements ProfileIterator {
  final LinkedIn linkedIn;
  final String profileId;
  final ContactType type;

  int currentPosition = 0;
  List<Profile> cache = [];

  LinkedInIterator({
    required this.linkedIn,
    required this.profileId,
    required this.type,
  });

  void lazyInit() {
    if (cache.isEmpty) {
      cache = linkedIn.requestConnectionsList(
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
