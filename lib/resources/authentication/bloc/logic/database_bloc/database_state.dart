part of 'database_bloc.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState({
    required String token,
    required String name,
    required String email,
  }) = _Initial;
  factory DatabaseState.initial() => const DatabaseState(
        token: "",
        email: "",
        name: "",
      );
}
