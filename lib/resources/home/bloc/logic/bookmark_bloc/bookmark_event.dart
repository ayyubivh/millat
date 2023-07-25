part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.addCollection({
    required String name,
    required String description,
    required List<int> id,
    required String image,
    String? dbId,
  }) = AddCollection;
  const factory BookmarkEvent.saveImageEvent({
    required String img,
  }) = SaveImageEvent;
  const factory BookmarkEvent.saveQuranChapterId({
    required List<int> id,
  }) = SaveQuranChapterId;
  const factory BookmarkEvent.nameChanged({required String nameValue}) =
      NameChanged;
  const factory BookmarkEvent.descriptionChanged({
    required String descriptionValue,
  }) = DescriptionChanged;
  const factory BookmarkEvent.editCollection({
    required String name,
    required String description,
    required List<int> id,
    required String image,
    required String dbId,
  }) = EditCollection;
  const factory BookmarkEvent.saveIndexEvent({
    required int indexList,
  }) = SaveIndexEvent;
  const factory BookmarkEvent.clearIndexEvent() = ClearIndexEvent;
}
