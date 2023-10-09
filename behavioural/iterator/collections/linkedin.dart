part of 'social_network.dart';

class LinkedIn implements SocialNetwork {
  LinkedIn({this.connections = const []});

  final List<Profile> connections;

  Profile? getProfile(String profileId) {
    for (var profile in connections) {
      if (profile.id == profileId) return profile;
    }
    return null;
  }

  List<Profile> requestConnectionsList({
    required String profileId,
    required ContactType contactType,
  }) {
    Profile? profile = getProfile(profileId);
    return profile != null ? profile.getContacts(contactType) : [];
  }

  @override
  ProfileIterator createFriendsIterator(String profileId) {
    return LinkedInIterator(
      linkedIn: this,
      profileId: profileId,
      type: ContactType.friend,
    );
  }

  @override
  ProfileIterator createCoworkersIterator(String profileId) {
    return LinkedInIterator(
      linkedIn: this,
      profileId: profileId,
      type: ContactType.coworker,
    );
  }
}
