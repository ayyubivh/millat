part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class Login extends AuthEvent {
  final String email;
  final String password;
  final BuildContext context;
  Login(this.email, this.password, this.context);
}

class SignUp extends AuthEvent {
  final String name;
  final String email;
  final String password;

  SignUp(this.name, this.email, this.password);
}

class SendOTP extends AuthEvent {
  final String phoneNumber;

  SendOTP(this.phoneNumber);
}

class VerifyOTP extends AuthEvent {
  final String code;
  final BuildContext context;

  VerifyOTP(this.code,this.context);
}

class ForgotPassword extends AuthEvent {
  final String email;

  ForgotPassword(this.email);
}

class SocialLogin extends AuthEvent {
  final String email;
  final String name;
  final BuildContext context;

  SocialLogin(this.context, {required this.email, required this.name});
}
