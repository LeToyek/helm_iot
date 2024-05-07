import 'package:firebase_auth/firebase_auth.dart';

sealed class UserState {
  User? user;

  UserState({this.user});
}

class InitialUserState extends UserState {
  InitialUserState() : super();
}

class LoadingUserState extends UserState {
  LoadingUserState() : super();
}

class LoadedUserState extends UserState {
  LoadedUserState({required User user}) : super(user: user);
}

class ErrorUserState extends UserState {
  final String message;

  ErrorUserState({required this.message}) : super();
}
