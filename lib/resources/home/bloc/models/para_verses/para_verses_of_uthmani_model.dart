import 'package:freezed_annotation/freezed_annotation.dart';
part 'para_verses_of_uthmani_model.g.dart';
part 'para_verses_of_uthmani_model.freezed.dart';

@freezed
class ParaVersesModelOfUthmani with _$ParaVersesModelOfUthmani {
  const factory ParaVersesModelOfUthmani({
    required List<Verses> verses,
  }) = _ParaVersesModelOfUthmani;

  factory ParaVersesModelOfUthmani.fromJson(Map<String, dynamic> json) =>
      _$ParaVersesModelOfUthmaniFromJson(json);
}

@freezed
class Verses with _$Verses {
  const factory Verses({
    int? id,
    @JsonKey(name: "verse_key") String? verseKey,
    @JsonKey(name: "text_uthmani") String? textUthmani,
  }) = _Verses;

  factory Verses.fromJson(Map<String, dynamic> json) => _$VersesFromJson(json);
}
