import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ISmartFirebaseUser {
  ISmartFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ISmartFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ISmartFirebaseUser> iSmartFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<ISmartFirebaseUser>((user) => currentUser = ISmartFirebaseUser(user));
