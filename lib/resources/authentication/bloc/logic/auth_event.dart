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
  final String referralCode;

  SignUp(this.name, this.email, this.password, this.referralCode);
}

class SendOTP extends AuthEvent {
  final String phoneNumber;
  final String referrelCode;
  SendOTP(this.phoneNumber, this.referrelCode);
}

// class SendOTPonly extends AuthEvent {
//   final String phoneNumber;

//   SendOTPonly(this.phoneNumber);
// }

class ResendSendOTP extends AuthEvent {}

class SignInWithPhone extends AuthEvent {
  final String? phoneNumber;
  final BuildContext context;
  final String referralCode;

  SignInWithPhone(this.context, {this.phoneNumber, required this.referralCode});
}

class VerifyOTP extends AuthEvent {
  final String code;
  final BuildContext context;

  VerifyOTP(this.code, this.context);
}

class ForgotPassword extends AuthEvent {
  final String email;

  ForgotPassword(this.email);
}

class SocialLogin extends AuthEvent {
  final String email;
  final String name;
  final String? id;
  final String? picture;
  final BuildContext context;
  final String? phoneNumber;
  final String? referralCode;
  SocialLogin(
    this.context, {
    this.picture,
    required this.email,
    required this.name,
    this.id,
    this.phoneNumber,
    this.referralCode,
  });
}

class AuthloadingEvent extends AuthEvent {}
