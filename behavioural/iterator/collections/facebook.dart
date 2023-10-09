part of 'social_network.dart';

class Facebook implements SocialNetwork {
  Facebook({this.profiles = const []});

  final List<Profile> profiles;

  Profile? getProfile(String profileId) {
    for (var profile in profiles) {
      if (profile.id == profileId) return profile;
    }
    return null;
  }

  List<Profile> socialGraphRequest({
    required String profileId,
    required ContactType contactType,
  }) {
    Profile? profile = getProfile(profileId);
    return profile != null ? profile.getContacts(contactType) : [];
  }

  @override
  ProfileIterator createFriendsIterator(String profileId) {
    return FacebookIterator(
      facebook: this,
      profileId: profileId,
      type: ContactType.friend,
    );
  }

  @override
  ProfileIterator createCoworkersIterator(String profileId) {
    return FacebookIterator(
      facebook: this,
      profileId: profileId,
      type: ContactType.coworker,
    );
  }
}
