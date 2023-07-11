import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:millat/utils/string_constants.dart';

part 'database_event.dart';
part 'database_state.dart';
part 'database_bloc.freezed.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  DatabaseBloc() : super(DatabaseState.initial()) {
    on<StoreTokenEvent>((event, emit) {
      final authBox = Hive.box(userBox);
      final token = event.token;
      authBox.put(authToken, token);
      emit(state.copyWith(token: token));
    });
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
  }
}
