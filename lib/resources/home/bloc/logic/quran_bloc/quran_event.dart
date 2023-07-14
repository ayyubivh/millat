part of 'quran_bloc.dart';

@freezed
class QuranEvent with _$QuranEvent {
  const factory QuranEvent.fetchQuaranChaptersEvent() =
      FetchQuaranChaptersEvent;
  const factory QuranEvent.fetchChaperVersesEvent({
    required int id,
  }) = FetchChaperVersesEvent;
}
