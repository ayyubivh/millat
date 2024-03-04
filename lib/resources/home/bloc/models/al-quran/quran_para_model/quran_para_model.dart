// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/models/al-quran/quran_chapter_models/quran_surah_models.dart';
part 'quran_para_model.g.dart';
part 'quran_para_model.freezed.dart';

@freezed
class QuranParaModel with _$QuranParaModel {
  const factory QuranParaModel({
    required QuranSurahModel surah,
    @JsonKey(name: "_id") required String? id,
    @JsonKey(name: "title") required String? title,
    @JsonKey(name: "slug") required String? slug,
    @JsonKey(name: "noOfSurah") required int? noOfSurah,
    @JsonKey(name: "noOfPara") required int? noOfpara,
  }) = _QuranParaModel;

  factory QuranParaModel.fromJson(Map<String, dynamic> json) =>
      _$QuranParaModelFromJson(json);
}
