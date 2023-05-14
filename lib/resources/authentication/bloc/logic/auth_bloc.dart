import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:millat/resources/authentication/bloc/service/auth_service.dart';
import 'package:millat/resources/authentication/view/verify_otp_view.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent,AuthState>{
  final AuthService _authService = AuthService();

  AuthBloc() : super(AuthInitial()){
    on<AuthEvent> ((event,emit)async{
      if( event is Login){
        if(event.email.isEmpty || event.password.isEmpty){
          emit(AuthError());
        }else {
          emit(AuthLoading());
          final res =  await _authService.login(email: event.email, password: event.password);
          if(res == true){
            emit(AuthLoaded(event.email));
          }else{
            emit(AuthError());
          }
        }
      }else if (event is SignUp){
        if(event.name.isEmpty|| event.email.isEmpty || event.password.isEmpty){
          emit(AuthError());
        }else {
          emit(AuthLoading());
          final res =  await _authService.signUp(name: event.name,email: event.email, password: event.password);
          if(res == true){
            emit(AuthLoaded(event.email));
          }else{
            emit(AuthError());
          }
        }
      }else if(event is SendOTP){
        if(event.phoneNumber.isEmpty){
          emit(AuthError());
        }else {
          emit(AuthLoading());
          final res =  await _authService.sendOTP(phoneNumber: event.phoneNumber);
          if(res == true){
            emit(AuthLoaded(event.phoneNumber));
          }else{
            emit(AuthError());
          }
        }
      }else if(event is VerifyOTP){
        if(event.code.isEmpty){
          emit(AuthError());
        }else {
          emit(AuthLoading());
          final res =  await _authService.verifyOTP(OTP: event.code,phoneNumber: event.phoneNumber);
          if(res == true){
            emit(AuthLoaded(event.phoneNumber));
          }else{
            emit(AuthError());
          }
        }}
    });

  }
}