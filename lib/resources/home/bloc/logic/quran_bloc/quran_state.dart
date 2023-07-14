part of 'quran_bloc.dart';

@freezed
class QuranState with _$QuranState {
  const factory QuranState({
    required bool isLoading,
    required QuranChapters? quranChaptersModel,
    required ChapterVersesModel? chapterVersesModel,
  }) = _QuranState;
  factory QuranState.initial() => const QuranState(
        isLoading: false,
        quranChaptersModel: null,
        chapterVersesModel: null,
      );
}
