// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'verses_by_key_model.g.dart';
part 'verses_by_key_model.freezed.dart';

@freezed
class VersesByKeyModel with _$VersesByKeyModel {
  const factory VersesByKeyModel({
    required List<Verses> verses,
  }) = _VersesByKeyModel;

  factory VersesByKeyModel.fromJson(Map<String, dynamic> json) =>
      _$VersesByKeyModelFromJson(json);
}

@freezed
class Verses with _$Verses {
  const factory Verses({
    required int id,
    @JsonKey(name: "verse_key") required String verseKey,
    @JsonKey(name: "text_indopak") required String textIndopak,
  }) = _Verses;

  factory Verses.fromJson(Map<String, dynamic> json) => _$VersesFromJson(json);
}
