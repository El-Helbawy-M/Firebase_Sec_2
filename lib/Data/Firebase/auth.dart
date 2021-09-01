import 'package:firebase_auth/firebase_auth.dart';

class Auther {
  FirebaseAuth _auther = FirebaseAuth.instance;
  final String email, password;
  Auther(this.email, this.password);
  Future<bool> register() async {
    try {
      await this._auther.createUserWithEmailAndPassword(
          email: this.email, password: this.password);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        return false;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
    return false;
  }

  Future<bool> signIn() async {
    try {
      await this._auther.signInWithEmailAndPassword(
          email: this.email, password: this.password);
      return true;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        return false;
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        return false;
      }
    }
    return false;
  }
}
