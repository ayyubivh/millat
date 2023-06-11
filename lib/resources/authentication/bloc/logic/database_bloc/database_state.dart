part of 'database_bloc.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState({
    required String token,
  }) = _Initial;
  factory DatabaseState.initial() => DatabaseState(token: "");
}
