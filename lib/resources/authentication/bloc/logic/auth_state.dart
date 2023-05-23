part of 'auth_bloc.dart';

@immutable
abstract class AuthState{}

class AuthInitial extends AuthState{}

class AuthLoading extends AuthState{}

class AuthLoaded extends AuthState{
  final String email;

  AuthLoaded(this.email);
}

class AuthError extends AuthState{
  final String errorMessage;

  AuthError(this.errorMessage);
}