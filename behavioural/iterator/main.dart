import 'collections/social_network.dart';
import 'profile.dart';
import 'social_spammer.dart';

void main() {
  List<Profile> profiles = mockProfiles;

  // Facebook

  SocialNetwork network = Facebook(profiles: profiles);
  SocialSpammer spammer = SocialSpammer(network: network);

  print('FACEBOOK SPAM \n- - - - - - -\n');

  //Send spam to anna's friends
  print('Send spam to Anna\'s friends');
  Profile anna = profiles[0];
  spammer.sendSpamToFriends(anna.id, "Hey, friends!");

  //Send spam to Brandon's coworkers
  print('\n\nSend spam to Brandon\'s coworkers');
  Profile brandon = profiles[1];
  spammer.sendSpamToCoworkers(brandon.id, "Hey, coworkers!");

  //

  // Linkedin

  print('\n\nLINKEDIN SPAM \n- - - - - - -\n');

  //Send spam to anna's friends
  print('Send spam to Anna\'s friends');
  // Profile anna = profiles[0];
  // spammer.sendSpamToFriends(anna.id, "Hey, friends!");

  //Send spam to Brandon's coworkers
  print('\n\nSend spam to Brandon\'s coworkers');
  // Profile brandon = profiles[1];
  // spammer.sendSpamToCoworkers(brandon.id, "Hey, coworkers!");
}

List<Profile> get mockProfiles {
  Profile profile1 = Profile(id: 'user1', name: 'Anna');
  Profile profile2 = Profile(id: 'user2', name: 'Brandon');
  Profile profile3 = Profile(id: 'user3', name: 'Callie');
  Profile profile4 = Profile(id: 'user4', name: 'Dwaine');
  Profile profile5 = Profile(id: 'user5', name: 'Ethel');
  Profile profile6 = Profile(id: 'user6', name: 'Fernandes');

  profile1.addContacts([
    Contact(profile: profile2, contactType: ContactType.friend),
    Contact(profile: profile4, contactType: ContactType.friend),
    Contact(profile: profile5, contactType: ContactType.coworker),
    Contact(profile: profile6, contactType: ContactType.friend),
  ]);

  profile2.addContacts([
    Contact(profile: profile3, contactType: ContactType.coworker),
    Contact(profile: profile1, contactType: ContactType.friend),
    Contact(profile: profile6, contactType: ContactType.coworker),
  ]);

  final profiles = [profile1, profile2, profile3, profile4, profile5, profile6];
  return profiles;
}
