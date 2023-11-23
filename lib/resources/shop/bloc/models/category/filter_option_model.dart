import 'package:freezed_annotation/freezed_annotation.dart';
part 'filter_option_model.freezed.dart';
part 'filter_option_model.g.dart';

@freezed
class FilterOptionModel with _$FilterOptionModel {
  const factory FilterOptionModel({
    int? status,
    String? message,
    String? error,
    Result? result,
  }) = _FilterOptionModel;

  factory FilterOptionModel.fromJson(Map<String, dynamic> json) =>
      _$FilterOptionModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required Data data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data(
    List<Brand>? brand,
    List<Subcategory>? subcategory,
    List<String>? colors,
    int? maxPrice,
  ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    String? brandName,
    @JsonKey(name: "_id") String? id,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Subcategory with _$Subcategory {
  const factory Subcategory(
    @JsonKey(name: "_id") String? id,
    String? title,
  ) = _Subcategory;

  factory Subcategory.fromJson(Map<String, dynamic> json) =>
      _$SubcategoryFromJson(json);
}
