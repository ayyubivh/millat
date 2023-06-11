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
      final authBox = Hive.box('authTokenBox');
      final token = event.token;
      authBox.put(AUTHTOKEN, token);
      emit(state.copyWith(token: token));
    });
    on<FetchToken>((event, emit) {
      final authBox = Hive.box('authTokenBox');
      final token = authBox.get(AUTHTOKEN);
      emit(state.copyWith(token: token));
      print('when fetch token ${state.token}');
    });
  }
}
