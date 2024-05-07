import 'package:firebase_auth/firebase_auth.dart';
import 'package:helm_iot/domain/repositories/user_repositories.dart';

abstract class UserServiceImpl {
  Future<User?> loginUser({required String email, required String password});
  Future<User?> loginWithGoogle();
  Future<void> registerUser();
  Future<void> logoutUser();
}

class UserService {
  final UserRepository _userRepository;

  UserService(this._userRepository);

  Future<User?> loginUser(
      {required String email, required String password}) async {
    final res =
        await _userRepository.loginUser(email: email, password: password);
    return res;
  }

  Future<User?> loginWithGoogle() async {
    return await _userRepository.loginWithGoogle();
  }

  Future<void> registerUser() async {
    await _userRepository.registerUser();
  }

  Future<void> logoutUser() async {
    await _userRepository.logoutUser();
  }
}
