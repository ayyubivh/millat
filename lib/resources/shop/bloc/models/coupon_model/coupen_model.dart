import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupen_model.g.dart';
part 'coupen_model.freezed.dart';

@freezed
class CouponModel with _$CouponModel {
  const factory CouponModel({
    required int? status,
    required String? message,
    required String? error,
    required Result result,
  }) = _CouponModel;

  factory CouponModel.fromJson(Map<String, dynamic> json) =>
      _$CouponModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required List<CouponData>? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class CouponData with _$CouponData {
  const factory CouponData({
    @JsonKey(name: '_id') String? id,
    String? couponCode,
    double? discount,
    String? expiryDate,
    double? minPrice,
    String? createdAt,
    String? updatedAt,
  }) = _CouponData;

  factory CouponData.fromJson(Map<String, dynamic> json) =>
      _$CouponDataFromJson(json);
}
