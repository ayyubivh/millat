part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthLoaded extends AuthState {
  final String email;

  AuthLoaded(this.email);
}

class AuthPhoneNumber extends AuthState {
  final String phoneNumber;

  AuthPhoneNumber({required this.phoneNumber});
}

class AuthError extends AuthState {
  final String errorMessage;

  AuthError(this.errorMessage);
}
