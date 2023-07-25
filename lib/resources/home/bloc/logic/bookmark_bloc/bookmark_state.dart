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
  }) = _BookmarkState;
  factory BookmarkState.initial() => const BookmarkState(
        indexList: [],
        image: "",
        description: "",
        name: "",
        id: [],
        errorMessage: "",
        dbId: '',
        isSuccess: false,
      );
}
