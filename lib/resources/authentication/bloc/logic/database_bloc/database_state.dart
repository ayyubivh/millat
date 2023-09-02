part of 'database_bloc.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState(
      {required String token,
      required String name,
      required String email,
      required AuthUserModel? authUserModel,
      required bool isLoading,
      required String succesMessage,
      required String failedMessage}) = _Initial;
  factory DatabaseState.initial() => const DatabaseState(
      token: "",
      email: "",
      name: "",
      authUserModel: null,
      isLoading: false,
      succesMessage: "",
      failedMessage: "");
}
