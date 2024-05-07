import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class UserRepositoryImpl {
  Future<User?> loginUser({required String email, required String password});
  Future<User?> loginWithGoogle();
  Future<void> registerUser();
  Future<void> logoutUser();
}

class UserRepository implements UserRepositoryImpl {
  final FirebaseAuth _firebaseAuth;

  UserRepository(this._firebaseAuth);

  @override
  Future<User?> loginUser(
      {required String email, required String password}) async {
    final res = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return res.user;
  }

  @override
  Future<User?> loginWithGoogle() async {
    try {
      List<String> scopes = [
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
      ];

      print('Google Client ID: ${dotenv.env['GOOGLE_CLIENT_ID']}');
      print('Google');

      GoogleSignInAccount? googleUser = await GoogleSignIn(
        scopes: scopes,
        serverClientId: dotenv.env['GOOGLE_CLIENT_ID'],
      ).signIn();

      print("Google User: $googleUser");
      GoogleSignInAuthentication googleAuth = await googleUser!.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      User? user = (await _firebaseAuth.signInWithCredential(credential)).user;
      return user;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> logoutUser() {
    // TODO: implement logoutUser
    throw UnimplementedError();
  }

  @override
  Future<void> registerUser() {
    // TODO: implement registerUser
    throw UnimplementedError();
  }
}
