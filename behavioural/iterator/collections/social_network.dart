import '../iterators/profile_iterator.dart';
import '../profile.dart';

part 'facebook.dart';

//interface

abstract class SocialNetwork {
  ProfileIterator createFriendsIterator(String profileId);
  ProfileIterator createCoworkersIterator(String profileId);
}
