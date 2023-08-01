part of 'bookmark_bloc.dart';

@freezed
class BookmarkEvent with _$BookmarkEvent {
  const factory BookmarkEvent.addCollection({
    required String name,
    required String description,
    required List<String> verskey,
    required String image,
    required BuildContext context,
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
    required List<String> verskey,
    required String image,
    required String dbId,
    required BuildContext context,
  }) = EditCollection;
  const factory BookmarkEvent.saveIndexEvent({
    required int indexList,
  }) = SaveIndexEvent;
  const factory BookmarkEvent.saveVersesIndexEvent({
    required int versesIndexList,
  }) = SaveVersesIndexEvent;
  const factory BookmarkEvent.clearIndexEvent() = ClearIndexEvent;
  const factory BookmarkEvent.changeIndexEvent(int index) = ChangeIndexEvent;
  const factory BookmarkEvent.emptyIndexEvent() = EmptyIndexEvent;
  const factory BookmarkEvent.saveVerseKeyEvent(String versekey) =
      SaveVerseKeyEvent;
  const factory BookmarkEvent.emptyVerseKeyEvent() = EmptyVerseKeyEvent;
  const factory BookmarkEvent.fetchCollectionItem({
    required List<BookMarktCollectionModel> bookMarkCollectionModel,
  }) = FetchCollectionItem;
}
