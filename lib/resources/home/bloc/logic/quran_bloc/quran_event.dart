part of 'quran_bloc.dart';

@freezed
class QuranEvent with _$QuranEvent {
  const factory QuranEvent.fetchQuaranChaptersEvent() =
      FetchQuaranChaptersEvent;
  const factory QuranEvent.fetchChaperVersesEvent({
    required int id,
  }) = FetchChaperVersesEvent;
  const factory QuranEvent.fetchParaVerses({
    required int id,
  }) = FetchParaVerses;
  const factory QuranEvent.fetchQuranPara() = FetchQuranPara;
  const factory QuranEvent.fetchTranslationChapter({
    int? chapterId,
  }) = FetchTranslationChapter;
  const factory QuranEvent.fetchTranslationJuz({
    int? juzId,
  }) = FetchTranslationJuz;
  const factory QuranEvent.changeExpandEvent() = ChangeExpandEvent;
  const factory QuranEvent.changeExpandOnSearchEvent() =
      ChangeExpandOnSearchEvent;
  const factory QuranEvent.fechtChapterbyId({
    required List<int> id,
  }) = FechtChapterbyId;
  const factory QuranEvent.searchChapterEvent({
    required String query,
  }) = SearchChapterEvent;
  const factory QuranEvent.fetchVersesByKey({required String verseKey}) =
      FetchVersesByKey;
}
