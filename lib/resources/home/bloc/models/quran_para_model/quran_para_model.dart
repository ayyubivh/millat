// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'quran_para_model.g.dart';
part 'quran_para_model.freezed.dart';

@freezed
class QuranParaModel with _$QuranParaModel {
  const factory QuranParaModel({
    required List<Juzs> juzs,
  }) = _QuranParaModel;

  factory QuranParaModel.fromJson(Map<String, dynamic> json) =>
      _$QuranParaModelFromJson(json);
}

@freezed
class Juzs with _$Juzs {
  const factory Juzs({
    int? id,
    @JsonKey(name: 'juz_number') int? juzNumber,
    @JsonKey(name: 'verse_mapping') Map<String, String>? verseMapping,
    @JsonKey(name: 'first_verse_id') int? firstVerseId,
    @JsonKey(name: 'last_verse_id') int? lastVerseId,
    @JsonKey(name: 'verses_count') int? versesCount,
  }) = _Juzs;

  factory Juzs.fromJson(Map<String, dynamic> json) => _$JuzsFromJson(json);
}
