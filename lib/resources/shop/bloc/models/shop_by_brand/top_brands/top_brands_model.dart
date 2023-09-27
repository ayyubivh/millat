import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_brands_model.g.dart';
part 'top_brands_model.freezed.dart';

@freezed
class TopBrandsModel with _$TopBrandsModel {
  const factory TopBrandsModel({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _TopBrandsModel;

  factory TopBrandsModel.fromJson(Map<String, dynamic> json) =>
      _$TopBrandsModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<Data>? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: "_id") required String? id,
    required String? role,
    required String? name,
    required String? email,
    required String? password,
    @JsonKey(name: "isActive") required bool? active,
    required String? phoneNumber,
    required String? logo,
    required String? coverImage,
    required String? description,
    @JsonKey(name: "cityName") required String? cityName,
    @JsonKey(name: "brandName") required String? brandName,
    @JsonKey(name: "companyName") required String? companyName,
    @JsonKey(name: "companyRegYear") required String? companyRegYear,
    @JsonKey(name: "revenueOfLastThreeMonths")
    required int? revenueOfLastThreeMonths,
    required String? category,
    @JsonKey(name: "subCategory") required List<String>? subCategory,
    required String? GST,
    required String? otp,
    required String? createdAt,
    required String? updatedAt,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
