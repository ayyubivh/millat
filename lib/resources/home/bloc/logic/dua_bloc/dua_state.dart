part of 'dua_bloc.dart';

@freezed
class DuaState with _$DuaState {
  const factory DuaState(
      {required bool isLoading,
      required DuaCategoryModel? duaCategoryModel,
      required DuaBookMarkModel? duaBookMarkModel,
      required DuaSubcategoryModel? duaSubcategoryModel,
      required DuaModel? duaModel,
      required String bookmarkSuccess,
      required String bookmarkError,
      required double sliderValue,
      required String subCategoryName,
      required Set<String>? bookmarkItems,
      required List<DuaModelById>? duaModelbyId,
      required int bookMarkLength,
      required int translationText}) = _DuaState;
  factory DuaState.initial() => const DuaState(
        isLoading: false,
        duaCategoryModel: null,
        duaBookMarkModel: null,
        duaSubcategoryModel: null,
        duaModel: null,
        bookmarkSuccess: "",
        bookmarkError: "",
        sliderValue: 17.0,
        duaModelbyId: [],
        subCategoryName: "",
        bookmarkItems: {},
        bookMarkLength: 0,
        translationText: 0,
      );
}
