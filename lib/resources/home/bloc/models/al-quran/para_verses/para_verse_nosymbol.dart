// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'para_verse_nosymbol.g.dart';
part 'para_verse_nosymbol.freezed.dart';

@freezed
class ParaVersesModelofNoSymbol with _$ParaVersesModelofNoSymbol {
  const factory ParaVersesModelofNoSymbol({
    required List<Verses> verses,
  }) = _ParaVersesModelofNoSymbol;

  factory ParaVersesModelofNoSymbol.fromJson(Map<String, dynamic> json) =>
      _$ParaVersesModelofNoSymbolFromJson(json);
}

@freezed
class Verses with _$Verses {
  const factory Verses({
    int? id,
    @JsonKey(name: "verse_key") String? verseKey,
    @JsonKey(name: "text_uthmani_simple") String? textIndopak,
  }) = _Verses;

  factory Verses.fromJson(Map<String, dynamic> json) => _$VersesFromJson(json);
}
