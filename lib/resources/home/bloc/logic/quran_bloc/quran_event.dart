part of 'quran_bloc.dart';

@freezed
class QuranEvent with _$QuranEvent {
  const factory QuranEvent.fetchQuaranChaptersEvent() =
      FetchQuaranChaptersEvent;
  const factory QuranEvent.fetchChaperVersesEvent({
    required int id,
  }) = FetchChaperVersesEvent;
  const factory QuranEvent.fetchChapterVersesbyTextName({
    required int id,
  }) = FetchChapterVersesbyTextName;
  const factory QuranEvent.fetchParaVerses({
    required int id,
  }) = FetchParaVerses;
  const factory QuranEvent.fetchQuranPara() = FetchQuranPara;
  const factory QuranEvent.changeExpandOnSearchEvent() =
      ChangeExpandOnSearchEvent;
  const factory QuranEvent.fechtChapterbyId({
    required List<int> id,
  }) = FechtChapterbyId;
  const factory QuranEvent.searchChapterEvent({
    required String query,
  }) = SearchChapterEvent;
  const factory QuranEvent.fetchVersesByKey({required List<String> verseKey}) =
      FetchVersesByKey;
  const factory QuranEvent.fetchParaAudios(
      {required int id, required int recitorId}) = FetchParaAudios;
  const factory QuranEvent.fetchChapterAudioFiles(
      {required int id, required int recitorId}) = FetchChapterAudioFiles;
  const factory QuranEvent.changeIndexBackGroundSetting({
    required int index,
  }) = ChangeIndexBackGroundSetting;
  const factory QuranEvent.increaseFontsize() = IncreaseFontsize;
  const factory QuranEvent.decreaseFontsize() = DecreaseFontsize;
  const factory QuranEvent.fetchAllTranslationsEvent() =
      FetchAllTranslationsEvent;
  const factory QuranEvent.fetchAllChapterTranslationTexts({
    required int chapterId,
    required int translationId,
  }) = FetchTranslationChapterTexts;
  const factory QuranEvent.fetchAllParaTranslationTexts({
    required int paraId,
    required int translationId,
  }) = FetchTranslationParaTexts;
  const factory QuranEvent.playAllParaAudiosAuto({
    required int index,
  }) = PlayAllParaAudiosAuto;
  const factory QuranEvent.playAllChapterAudiosAuto({
    int? index,
  }) = PlayAllChapterAudiosAuto;
  const factory QuranEvent.showMusicbar() = ShowMusicbar;
  const factory QuranEvent.isExpandonSearchEvent({
    required bool isExpand,
  }) = IsExpandonSearchEvent;
  const factory QuranEvent.saveGlobalTransilationIdAndName({
    required int transilationId,
    required String translationName,
  }) = SaveGlobalTransilationIdAndName;
  const factory QuranEvent.fetchAllRecitors() = FetchAllRecitors;
  const factory QuranEvent.saveRecitorNameAndId({
    required int recitorId,
    required String recitorName,
  }) = SaveRecitorNameAndId;
  const factory QuranEvent.saveQuranTexttypeName({
    required String textName,
  }) = SaveQuranTexttypeName;
  const factory QuranEvent.onTapofNextEvent() = OnTapofNextEvent;
  const factory QuranEvent.onTapofPrevEvent() = OnTapofPrevEvent;
  const factory QuranEvent.saveLastReadEvent({required String value}) =
      SaveLastReadEvent;
  const factory QuranEvent.fetchSingleVerseTranslation({
    required String verseKey,
  }) = FetchSingleVerseTranslation;
  // const factory QuranEvent.playSingleAudio({
  //   required String aya,
  //   required String chapterId,
  // }) = PlaySingleAudio;
  const factory QuranEvent.playPlayListAudio() = PlayPlayListAudio;
  const factory QuranEvent.emptyQuranVersesbyKey() = EmptyQuranVersesbyKey;
  const factory QuranEvent.addVersesToPlayList(
      {required List<String> verseKey}) = AddVersesToPlayList;
}
