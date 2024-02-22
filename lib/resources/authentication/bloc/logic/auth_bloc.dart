import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/service/auth_service.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthService _authService = AuthService();
  @override
  void onError(Object error, StackTrace stackTrace) {
    print("$error $stackTrace");
    super.onError(error, stackTrace);
  }

  String? userId;
  String? phoneNumber;
  String? referralCode;
  String? mail;
  String? socialId;
  String? name;
  String? picture;
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
            name: event.name,
            email: event.email,
            password: event.password,
            referralCode: event.referralCode,
          );
          if (res['status'] == 200) {
            final _userId = res['result']['userId'];
            userId = _userId;
            emit(AuthLoaded(_userId));
          } else {
            emit(AuthError(res['message']));
          }
        }
      } else if (event is SignInWithPhone) {
        if (event.phoneNumber != null) {
          phoneNumber = event.phoneNumber;

          emit(AuthLoading());
          final res = await _authService.newSignIn(
              userId: userId ?? '',
              // referralCode: event.referralCode,
              phoneNumber: event.phoneNumber!,
              context: event.context);
          if (res['status'] == true) {
            referralCode = event.referralCode;
            emit(AuthLoaded(event.phoneNumber!));
            emit(AuthPhoneNumber(phoneNumber: event.phoneNumber!));
          } else {
            emit(AuthError(res['message']));
          }
        }
      } else if (event is SendOTP) {
        phoneNumber = event.phoneNumber;

        // final currentState = state;
        // if (currentState is AuthSocialLoginNewUser) {
        //   emit(AuthLoading());
        //   final res =
        //       await _authService.sendOTP(phoneNumber: event.phoneNumber);
        //   if (res['status'] == true) {
        //     referralCode = event.referrelCode;
        //     emit(AuthPhoneNumber(phoneNumber: event.phoneNumber));

        //             } else {
        //     emit(AuthError(res['message']));
        //   }
        // }

        final res = await _authService.sendOTP(phoneNumber: event.phoneNumber);
        if (res['status'] == true) {
          emit(AuthLoaded(event.phoneNumber));
        } else {
          emit(AuthError(res['message']));
        }

        // }
        //  else if (event is SendOTPonly) {
        //   emit(AuthLoading());
        //   phoneNumber = event.phoneNumber;
        //   final res =
        //       await _authService.sendOTPonly(phoneNumber: event.phoneNumber);

        //   if (res['status'] == true) {
        //     print(res['result'].toString);
        //     emit(AuthLoadedOTPonly(event.phoneNumber, res['result'].toString()));
        //   } else {
        //     emit(AuthError(res['message']));
        //   }
      } else if (event is ResendSendOTP) {
        final currentState = state as AuthPhoneNumber;

        final res =
            await _authService.resendOTP(phoneNumber: currentState.phoneNumber);
        if (res['status'] == true) {
          debugPrint(res);
          // emit(AuthLoaded(currentState.phoneNumber));
        } else {
          emit(AuthError(res['message']));
        }
      } else if (event is VerifyOTP) {
        final currentState = state;
        print(currentState.toString());
        if (currentState is AuthSocialLoginNewUserLoaded ||
            state is AuthSocialPhoneNumberAvailable) {
          emit(AuthLoading());
          if (event.code.isEmpty) {
            emit(AuthError('Please fill in all the fields'));
          } else {
            final result = await _authService.signIn(
              context: event.context,
              phoneNumber: phoneNumber ?? "",
              otp: event.code,
              referrelCode: referralCode.toString(),
            );

            if (result['status'] == true) {
              emit(AuthLoaded(phoneNumber ?? ""));
            } else {
              emit(AuthError(result['message']));
            }
          }
        } else if (currentState is AuthPhoneNumber) {
          emit(AuthLoading());
          final result = await _authService.verifyOTP(
              referalCode: referralCode ?? "",
              context: event.context,
              phoneNumber: currentState.phoneNumber,
              otp: event.code);
          if (result['status'] == true) {
            emit(AuthLoaded(currentState.phoneNumber));
          } else {
            emit(AuthError(result['message']));
            emit(AuthPhoneNumber(phoneNumber: currentState.phoneNumber));
          }
        }
        //  else if (currentState is AuthLoadedOTPonly) {
        //   emit(AuthLoading());
        //   print(currentState.otp == event.code);
        //   if (currentState.otp == event.code) {
        //     print("yes");

        //     final result = await _authService.newSignIn(
        //       context: event.context,
        //       userId: userId ?? "",
        //       phoneNumber: currentState.phoneNumber!,
        //     );
        //     if (result['status'] == true) {
        //       emit(AuthLoaded(currentState.phoneNumber!));
        //     } else {
        //       emit(AuthError(result['message']));
        //     }
        //   }
        // }
      } else if (event is SocialLogin) {
        try {
          if (state is AuthSocialLoginNewUser) {
            final result = await _authService.loginWithSocial(
              context: event.context,
              email: mail ?? "",
              name: name,
              picture: picture ?? "",
              id: socialId ?? "",
              phoneNumber: event.phoneNumber,
            );
            phoneNumber = event.phoneNumber;
            print("result of social login $result");
            if (result.status == 200) {
              final token = result.result?.token;
              if (token == "" || token == null) {
                userId = result.result?.user?.id!;
                emit(AuthSocialLoginNewUserLoaded(
                    phoneNumber: phoneNumber, otp: ''));
              } else {
                emit(AuthLoadedSocialLogin());
              }
            } else {
              emit(AuthError(result.error ?? ""));
            }
          } else {
            emit(AuthLoading());
            emit(AuthloadingSocialLogin());
            final result = await _authService.loginWithSocial(
              context: event.context,
              email: event.email,
              name: event.name,
              picture: event.picture ?? "",
              id: event.id ?? "",
            );

            print("result of social login $result");
            if (result.status == 200) {
              final data = result.result;
              final token = data?.token;
              if (token == "" || token == null) {
                phoneNumber = data?.user?.phoneNumber;
                if (phoneNumber != "") {
                  print(data?.user?.phoneNumber);
                  emit(
                      AuthSocialPhoneNumberAvailable(data!.user!.phoneNumber!));
                } else {
                  socialId = data?.user?.socialId;
                  mail = data?.user?.email;
                  name = data?.user?.name;
                  picture = data?.user?.picture;
                  userId = result.result?.user?.id!;

                  emit(
                      AuthSocialLoginNewUser(userId: result.result?.user?.id!));
                }
              } else {
                emit(AuthLoadedSocialLogin());
              }
            } else {
              emit(AuthError(result.error ?? ""));
            }
          }
        } on Exception catch (e) {
          emit(AuthError(e.toString()));
        }
      }
    });
  }
}
