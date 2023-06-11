part of 'database_bloc.dart';

@freezed
class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.storeTokenEvent({
    required String token,
  }) = StoreTokenEvent;
  const factory DatabaseEvent.fetchToken() = FetchToken;
}
