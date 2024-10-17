import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class BechfaFirebaseUser {
  BechfaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

BechfaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<BechfaFirebaseUser> bechfaFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<BechfaFirebaseUser>((user) => currentUser = BechfaFirebaseUser(user));
