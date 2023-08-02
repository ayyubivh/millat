part of 'dua_bloc.dart';

@freezed
class DuaEvent with _$DuaEvent {
  const factory DuaEvent.fetchDuaCategoryEvent() = FetchDuaCategoryEvent;

  const factory DuaEvent.fetchDuaSubCategorybyCategory(
      {required String categoryId}) = FetchDuaSubCategorybyCategory;

  const factory DuaEvent.fetchDuaBySubcategoryEvent({
    required String subCategoryId,
  }) = FetchDuaBySubcategoryEvent;

  const factory DuaEvent.fetchDuaBookMarksEvent(BuildContext buildcontext) =
      FetchDuaBookMarksEvent;
}
