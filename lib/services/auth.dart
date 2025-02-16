import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_first_project/models/client.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Create a new client object based on the Firebase User provided credentials
  Client? _storeUIDFromUser(User? user) {
    return user != null ? Client(uid: user.uid) : null;
  }

  // Auth change user stream

  Stream<Client?> get clientStream {
    return _auth.authStateChanges().map((User? u) => _storeUIDFromUser(u));
  }

  // sign in anon
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return _storeUIDFromUser(user);
    } catch(e) {
      print(e.toString());
      return null;
    }
  }
  // sign in with email and password

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return _storeUIDFromUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // sign out 
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(e) {
      print(e.toString());
      return null;
    }
  }

}