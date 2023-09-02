part of 'hadith_bloc.dart';

@freezed
class HadithState with _$HadithState {
  const factory HadithState(
      {required List<HadithBookModel>? hadithBookModel,
      required bool isLoading,
      required HadithBooksChapterModel? hadithBooksChapterModel,
      required}) = _HadithState;
  factory HadithState.initial() => const HadithState(
      hadithBookModel: [], isLoading: false, hadithBooksChapterModel: null);
}
