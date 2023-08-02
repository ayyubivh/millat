part of 'dua_bloc.dart';

@freezed
class DuaState with _$DuaState {
  const factory DuaState({
    required bool isLoading,
    required DuaCategoryModel? duaCategoryModel,
    required DuaBookMarkModel? duaBookMarkModel,
    required DuaSubcategoryModel? duaSubcategoryModel,
    required DuaModel? duaModel,
  }) = _DuaState;
  factory DuaState.initial() => const DuaState(
        isLoading: false,
        duaCategoryModel: null,
        duaBookMarkModel: null,
        duaSubcategoryModel: null,
        duaModel: null,
      );
}
