import 'package:instagram/models/Users/user.dart';

class MyAccount extends User {
  String email;
  // List<Chat> chats;
  // List<Notification> notifications;
  MyAccount.fromUser(String email, String username, bool isPrivate, String bio)
      : this.email = email,
        super.fromUser(username, isPrivate, bio);

  MyAccount.fromFirebase(doc)
      : this.email = doc['email'],
        super.fromFirebase(doc);
}
