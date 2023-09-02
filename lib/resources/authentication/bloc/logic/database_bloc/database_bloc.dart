import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:millat/resources/authentication/bloc/service/auth_service.dart';
import 'package:millat/utils/string_constants.dart';

import '../../model/auth_user_model/auth_user_model.dart';

part 'database_event.dart';
part 'database_state.dart';
part 'database_bloc.freezed.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  final AuthService authService = AuthService();
  DatabaseBloc() : super(DatabaseState.initial()) {
    on<StoreTokenEvent>((event, emit) {
      final authBox = Hive.box(userBox);
      final token = event.token;
      authBox.put(authToken, token);
      emit(state.copyWith(token: token));
    });
    on<RemoveTokenEvent>(
      (event, emit) {
        final authBox = Hive.box(userBox);
        authBox.delete(authToken);
        emit(state.copyWith(token: ""));
      },
    );
    on<FetchToken>((event, emit) {
      final authBox = Hive.box(userBox);
      final String? token = authBox.get(authToken);
      if (token != null) {
        emit(state.copyWith(token: token));
      }
    });
    on<StoreUserDetails>((event, emit) {
      final authBox = Hive.box(userBox);
      final email = event.email;
      final name = event.name;
      authBox.put(emailKey, email);
      authBox.put(nameKey, name);
      emit(state.copyWith(email: email, name: name));
      // print('email ${email} and the $name');
      // emit(state.copyWith(userDetails: userDetails));
    });
    on<FetchUserDetails>((event, emit) {
      final authBox = Hive.box(userBox);
      final email = authBox.get(emailKey);
      final name = authBox.get(nameKey);
      emit(state.copyWith(email: email, name: name));
      print(
          'email on the database bloc ${state.email} ane the username ${state.name}');
    });
    on<FetchAuthUser>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        try {
          final data = await authService.fetchAuthUser(context: event.context);
          emit(state.copyWith(authUserModel: data, isLoading: false));
        } catch (e) {
          emit(state.copyWith(isLoading: false));

          throw Exception(e);
        }
      },
    );
    on<EditAuthUser>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      final data = await authService.editAuthUser(
          context: event.context,
          name: event.name,
          email: event.email,
          userName: event.userName);
      if (data['status'] == true) {
        emit(state.copyWith(
            isLoading: false, succesMessage: data['message'].toString()));
      } else {
        emit(state.copyWith(
            isLoading: false, failedMessage: data['message'].toString()));
      }
    });
  }
}
