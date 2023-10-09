enum ContactType { friend, coworker }

class Profile {
  final String id;
  final String name;
  final Map<ContactType, List<Profile>> contacts;

  Profile(
      {required this.id,
      required this.name,
      Map<ContactType, List<Profile>>? contacts})
      : this.contacts = contacts ?? {};

  List<Profile> getContacts(ContactType contactType) {
    return contacts[contactType] ?? [];
  }

  void addContact(Contact contact) {
    if (!contacts.containsKey(contact.contactType)) {
      contacts[contact.contactType] = [];
    }
    contacts[contact.contactType]!.add(contact.profile);
  }

  void addContacts(List<Contact> contactList) {
    for (var contact in contactList) {
      addContact(contact);
    }
  }
}

class Contact {
  Contact({required this.profile, required this.contactType});

  final Profile profile;
  final ContactType contactType;
}
