import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/models/al-quran/aya/surah_aya_model.dart';
part 'aya_id_model.g.dart';
part 'aya_id_model.freezed.dart';

@freezed
class AyaIdModel with _$AyaIdModel {
  const factory AyaIdModel(
      {@JsonKey(name: "_id") required String? id,
      required String? content,
      required List<Translation>? translation,
      required}) = _AyaIdModel;

  factory AyaIdModel.fromJson(Map<String, dynamic> json) =>
      _$AyaIdModelFromJson(json);
}
