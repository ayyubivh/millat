import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/models/al-quran/quran_chapter_models/quran_surah_models.dart';

part 'quran_para_model.g.dart';
part 'quran_para_model.freezed.dart';

@freezed
class QuranParaModel with _$QuranParaModel {
  const factory QuranParaModel({
    @JsonKey(name: '_id') required String? id,
    @JsonKey(name: 'title') required String? title,
    @JsonKey(name: 'surah') required List<QuranSurahModel>? surah,
    @JsonKey(name: 'paraNumber') required int? paraNumber,
    @JsonKey(name: 'createdAt') required String? createdAt,
    @JsonKey(name: 'updatedAt') required String? updatedAt,
  }) = _QuranParaModel;

  factory QuranParaModel.fromJson(Map<String, dynamic> json) =>
      _$QuranParaModelFromJson(json);
}
