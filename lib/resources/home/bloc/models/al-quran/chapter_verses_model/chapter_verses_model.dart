import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_verses_model.freezed.dart';
part 'chapter_verses_model.g.dart';

@freezed
class ChapterVersesModel with _$ChapterVersesModel {
  const factory ChapterVersesModel({
    required int code,
    required String status,
    required VersesData data,
  }) = _ChapterVersesModel;

  factory ChapterVersesModel.fromJson(Map<String, dynamic> json) =>
      _$ChapterVersesModelFromJson(json);
}

@freezed
class VersesData with _$VersesData {
  const factory VersesData({
    required String englishName,
  }) = _VersesData;

  factory VersesData.fromJson(Map<String, dynamic> json) =>
      _$VersesDataFromJson(json);
}
