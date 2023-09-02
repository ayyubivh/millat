// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'para_verses_model.g.dart';
part 'para_verses_model.freezed.dart';

@freezed
class ParaVersesModel with _$ParaVersesModel {
  const factory ParaVersesModel({
    required List<Verses> verses,
  }) = _ParaVersesModel;

  factory ParaVersesModel.fromJson(Map<String, dynamic> json) =>
      _$ParaVersesModelFromJson(json);
}

@freezed
class Verses with _$Verses {
  const factory Verses({
    int? id,
    @JsonKey(name: "verse_key") String? verseKey,
    @JsonKey(name: "text_indopak") String? textIndopak,
  }) = _Verses;

  factory Verses.fromJson(Map<String, dynamic> json) => _$VersesFromJson(json);
}
