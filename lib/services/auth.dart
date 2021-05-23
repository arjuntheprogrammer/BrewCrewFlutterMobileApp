import 'package:brew_crew/models/user.dart';
import 'package:brew_crew/services/database.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // create user obj based on firebase user
  CurrentUser _userFromFirebaseUser(User firebaseUser) {
    return firebaseUser != null ? CurrentUser(uid: firebaseUser.uid) : null;
  }

  // auth change user stream
  Stream<CurrentUser> get user {
    return _auth
        .authStateChanges()
        // .map((User firebaseUser) => _userFromFirebaseUser(firebaseUser));
        .map(_userFromFirebaseUser);
  }

  // sign in: anonymous
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // sign: email and password
  Future signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = result.user;
      return firebaseUser;
    } catch (errorr) {
      print(errorr.toString());
      return null;
    }
  }

  // register: email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User firebaseUser = result.user;

      // create a new document for the user with the uid
      await DatabaseService(uid: firebaseUser.uid)
          .updateUserData('0', 'New Crew Member', 100);
      return _userFromFirebaseUser(firebaseUser);
    } catch (errorr) {
      print(errorr.toString());
      return null;
    }
  }

  // sign out
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
