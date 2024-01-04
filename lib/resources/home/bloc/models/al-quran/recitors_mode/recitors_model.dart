// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'recitors_model.g.dart';
part 'recitors_model.freezed.dart';

@freezed
class RecitationsModel with _$RecitationsModel {
  const factory RecitationsModel({
    required List<Recitations> recitations,
  }) = _RecitationsModel;

  factory RecitationsModel.fromJson(Map<String, dynamic> json) =>
      _$RecitationsModelFromJson(json);
}

@freezed
class Recitations with _$Recitations {
  const factory Recitations({
    required int id,
    @JsonKey(name: "reciter_name") required String recitorName,
    @JsonKey(name: "translated_name") required TranslatedName translatedName,
    String? style,
  }) = _Recitations;

  factory Recitations.fromJson(Map<String, dynamic> json) =>
      _$RecitationsFromJson(json);
}

@freezed
class TranslatedName with _$TranslatedName {
  const factory TranslatedName({
    required String name,
    @JsonKey(name: "language_name") required String languageName,
  }) = _TranslatedName;

  factory TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$TranslatedNameFromJson(json);
}
