import 'package:firebase_auth/firebase_auth.dart';
import 'package:helm_iot/application/services.dart';
import 'package:helm_iot/application/user_service.dart';
import 'package:helm_iot/ui/controller/user_controller/user_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_controller.g.dart';

@riverpod
class UserController extends _$UserController {
  UserService get _service => ref.read(userServiceProvider);
  @override
  UserState build() {
    return InitialUserState();
  }

  void loginUser({required String email, required String password}) async {
    state = LoadingUserState();
    try {
      final user = await _service.loginUser(email: email, password: password);
      if (user != null) {
        state = LoadedUserState(user: user);
      } else {
        state = ErrorUserState(message: "User not found");
      }
    } catch (e) {
      state = ErrorUserState(message: e.toString());
    }
  }

  Future<User> loginWithGoogle() async {
    try {
      final user = await _service.loginWithGoogle();
      if (user != null) {
        return user;
      } else {
        throw Exception("User not found");
      }
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  void registerUser() async {
    state = LoadingUserState();
    try {
      // await _service.registerUser();
      // state = LoadedUserState();
    } catch (e) {
      state = ErrorUserState(message: e.toString());
    }
  }

  void logoutUser() async {
    state = LoadingUserState();
    try {
      // await _service.logoutUser();
      // state = LoadedUserState();
    } catch (e) {
      state = ErrorUserState(message: e.toString());
    }
  }
}
