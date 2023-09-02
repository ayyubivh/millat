// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'para_verse_uthmani.g.dart';
part 'para_verse_uthmani.freezed.dart';

@freezed
class ParaVersesModelofUthmani with _$ParaVersesModelofUthmani {
  const factory ParaVersesModelofUthmani({
    required List<Verses> verses,
  }) = _ParaVersesModelofUthmani;

  factory ParaVersesModelofUthmani.fromJson(Map<String, dynamic> json) =>
      _$ParaVersesModelofUthmaniFromJson(json);
}

@freezed
class Verses with _$Verses {
  const factory Verses({
    int? id,
    @JsonKey(name: "verse_key") String? verseKey,
    @JsonKey(name: "text_uthmani") String? textIndopak,
  }) = _Verses;

  factory Verses.fromJson(Map<String, dynamic> json) => _$VersesFromJson(json);
}
