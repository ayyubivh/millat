part of 'quran_bloc.dart';

@freezed
class QuranState with _$QuranState {
  const factory QuranState({
    required bool isLoading,
    required QuranChapters? quranChaptersModel,
    required ChapterVersesModel? chapterVersesModel,
    required ParaVersesModel? paraVersesModel,
    required QuranParaModel? quranParaModel,
    required VersesTranslationModel? versesTranslationModel,
    int? paraId,
    int? chatpterId,
  }) = _QuranState;
  factory QuranState.initial() => const QuranState(
        isLoading: false,
        quranChaptersModel: null,
        chapterVersesModel: null,
        paraVersesModel: null,
        quranParaModel: null,
        versesTranslationModel: null,
        paraId: null,
        chatpterId: null,
      );
}
