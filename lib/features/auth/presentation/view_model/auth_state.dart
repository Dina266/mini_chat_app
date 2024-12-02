part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {
  final User? user;

  AuthSuccess({this.user});
}

class AuthFailure extends AuthState {
  final String errorMessage;

  AuthFailure({required this.errorMessage});
}

class PasswordResetSuccess extends AuthState {}
class AuthLoggedOutState extends AuthState {}
class ChangeProfileSuccess extends AuthState {}
