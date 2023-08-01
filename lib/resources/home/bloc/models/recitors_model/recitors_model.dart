import 'package:freezed_annotation/freezed_annotation.dart';

part 'recitors_model.freezed.dart';
part 'recitors_model.g.dart';

@freezed
class RecitationModel with _$RecitationModel {
  const factory RecitationModel({
    required List<Recitations> recitations,
  }) = _RecitationModel;

  factory RecitationModel.fromJson(Map<String, dynamic> json) =>
      _$RecitationModelFromJson(json);
}

@freezed
class Recitations with _$Recitations {
  const factory Recitations({
    required int? id,
    required String? reciterName,
    required String? style,
    @JsonKey(name: 'translated_name') required TranslatedName? translatedName,
  }) = _Recitations;

  factory Recitations.fromJson(Map<String, dynamic> json) =>
      _$RecitationsFromJson(json);
}

@freezed
class TranslatedName with _$TranslatedName {
  const factory TranslatedName() = _TranslatedName;

  factory TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$TranslatedNameFromJson(json);
}
