part of 'bookmark_bloc.dart';

@freezed
class BookmarkState with _$BookmarkState {
  const factory BookmarkState(
      {required String image,
      required String name,
      required String description,
      required String errorMessage,
      required int id}) = _BookmarkState;
  factory BookmarkState.initial() => const BookmarkState(
      image: "", description: "", name: "", id: 0, errorMessage: "");
}
