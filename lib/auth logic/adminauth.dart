import 'package:firebase_auth/firebase_auth.dart';

class AdminAuth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<String?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return null; // Successful sign-in, no error
    } on FirebaseAuthException catch (e) {
      return e.message; // Return the error message on authentication failure
    }
  }
}
