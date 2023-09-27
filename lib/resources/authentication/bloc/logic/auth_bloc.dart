import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/service/auth_service.dart';

import '../../../../utils/utils.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService = AuthService();

  String? userId;

  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is Login) {
        if (event.email.isEmpty || event.password.isEmpty) {
          emit(AuthError('Please fill in all the fields'));
        } else {
          emit(AuthLoading());
          final result = await _authService.login(
              email: event.email,
              password: event.password,
              context: event.context);
          if (result['status'] == true) {
            emit(AuthLoaded(event.email));
          } else {
            emit(AuthError(result['message']));
          }
        }
      } else if (event is SignUp) {
        if (event.name.isEmpty ||
            event.email.isEmpty ||
            event.password.isEmpty) {
          emit(AuthError('Please fill in all the fields'));
        } else {
          emit(AuthLoading());
          final res = await _authService.signUp(
              name: event.name, email: event.email, password: event.password);
          if (res['status'] == true) {
            emit(AuthLoaded(event.email));
          } else {
            emit(AuthError(res['message']));
          }
        }
      } else if (event is SendOTP) {
        final currentState = state;
        if (currentState is AuthSocialLoginNewUser) {
          final res =
              await _authService.sendOTP(phoneNumber: event.phoneNumber);
          if (res['status'] == true) {
            emit(AuthLoaded(event.phoneNumber));
            emit(AuthPhoneNumber(phoneNumber: event.phoneNumber));
            emit(AuthSocialLoginNewUser(
                phoneNumber: event.phoneNumber, otp: res['result']));
          } else {
            emit(AuthError(res['message']));
          }
        }
      } else if (event is VerifyOTP) {
        final currentState = state;
        if (currentState is AuthSocialLoginNewUser) {
          if (event.code.isEmpty) {
            emit(AuthError('Please fill in all the fields'));
          } else {
            if (currentState.otp == event.code &&
                userId != null &&
                currentState.phoneNumber!.isNotEmpty) {
              final result = await _authService.signIn(
                context: event.context,
                  phoneNumber: currentState.phoneNumber!, userId: userId!);

              if (result['status'] == true) {
                emit(AuthLoaded(currentState.phoneNumber!));
              } else {
                emit(AuthError(result['message']));
              }
            } else {
              showSnackBar(event.context, "Invalid OTP");
            }
          }
        }
      } else if (event is SocialLogin) {
        emit(AuthLoading());
        emit(AuthloadingSocialLogin());
        final result = await _authService.loginWithSocial(
            email: event.email, name: event.name, context: event.context);
        print("result of social login $result");
        if (result.status == 200) {
          final token = result.result?.token;
          if (token == "" || token == null) {
            userId = result.result?.user?.id!;
            emit(AuthSocialLoginNewUser(userId: result.result?.user?.id!));
          } else {
            emit(AuthLoadedSocialLogin());
          }
        } else {
          emit(AuthError(result.error ?? ""));
        }
      }
    });
  }
}
