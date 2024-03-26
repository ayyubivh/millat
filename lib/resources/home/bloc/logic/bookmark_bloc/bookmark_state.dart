part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState({
    required String image,
    required String name,
    required String description,
    required String errorMessage,
    required List<int> id,
    required List<int> indexList,
    required String dbId,
    required bool isSuccess,
    required int index,
    required List<int> versesIndexList,
    required List<String> verskey,
    required List<QuranBookmModel>? quranbookmarkModel,
    required bool isLoading,
  }) = _BookmarkState;
  factory BookmarkState.initial() => const BookmarkState(
        indexList: [],
        quranbookmarkModel: null,
        versesIndexList: [],
        image: "",
        description: "",
        name: "",
        id: [],
        errorMessage: "",
        dbId: '',
        isSuccess: false,
        index: -1,
        verskey: [],
        isLoading: false,
      );
}
