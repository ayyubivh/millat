part of 'database_bloc.dart';

@freezed
class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.storeTokenEvent({
    required String token,
  }) = StoreTokenEvent;
  const factory DatabaseEvent.fetchToken() = FetchToken;
  const factory DatabaseEvent.storeUserDetails({
    required String email,
    required String name,
  }) = StoreUserDetails;
  const factory DatabaseEvent.fetchUserDetails() = FetchUserDetails;
}
