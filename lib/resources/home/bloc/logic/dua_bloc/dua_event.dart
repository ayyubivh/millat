part of 'dua_bloc.dart';

@freezed
class DuaEvent with _$DuaEvent {
  const factory DuaEvent.fetchDuaCategoryEvent() = FetchDuaCategoryEvent;

  const factory DuaEvent.fetchDuaSubCategorybyCategory(
      {required String categoryId}) = FetchDuaSubCategorybyCategory;

  const factory DuaEvent.fetchDuaBySubcategoryEvent({
    required String subCategoryId,
  }) = FetchDuaBySubcategoryEvent;
  const factory DuaEvent.addBookmarkEvent({
    required BuildContext context,
    required String duaId,
  }) = AddBookmarkEvent;
  const factory DuaEvent.fetchDuaBookMarksEvent(BuildContext buildcontext) =
      FetchDuaBookMarksEvent;
  const factory DuaEvent.removeBookmark({
    required BuildContext context,
    required String duaId,
  }) = RemoveBookmark;
  const factory DuaEvent.changeSliderEvent({required double sliderVal}) =
      ChangeSliderEvent;
  const factory DuaEvent.fetchDuaById() = FetchDuaById;
  const factory DuaEvent.changeSubcategoryNameEvent({required String newName}) =
      ChangeSubcategoryNameEvent;
  const factory DuaEvent.selectTranslationText({required int value}) =
      SelectTranslationText;
  const factory DuaEvent.switchDisplayArabicTextEvent(
      {required bool newValue}) = SwitchDisplayArabicTextEvent;
  const factory DuaEvent.switchDisplayTranslationTextEvent(
      {required bool newValue}) = SwitchDisplayTranslationTextEvent;
}
