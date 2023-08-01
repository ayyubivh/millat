import 'package:freezed_annotation/freezed_annotation.dart';
part 'para_verse_of_no_symbol.g.dart';
part 'para_verse_of_no_symbol.freezed.dart';

@freezed
class ParaVersesModelOfNoSymbol with _$ParaVersesModelOfNoSymbol {
  const factory ParaVersesModelOfNoSymbol({
    required List<Verses> verses,
  }) = _ParaVersesModelOfNoSymbol;

  factory ParaVersesModelOfNoSymbol.fromJson(Map<String, dynamic> json) =>
      _$ParaVersesModelOfNoSymbolFromJson(json);
}

@freezed
class Verses with _$Verses {
  const factory Verses({
    int? id,
    @JsonKey(name: "verse_key") String? verseKey,
    @JsonKey(name: "text_uthmani_simple") String? textOfNoSymbol,
  }) = _Verses;

  factory Verses.fromJson(Map<String, dynamic> json) => _$VersesFromJson(json);
}
