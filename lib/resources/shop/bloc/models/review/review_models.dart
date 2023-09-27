import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_models.freezed.dart';
part 'review_models.g.dart';

@freezed
class ReviewModel with _$ReviewModel {
  const factory ReviewModel({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    @JsonKey(name: 'data') Data? data,
    required double? avgRating,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  const factory Data({
    @JsonKey(name: '_id') String? id,
    int? count,
    List<Rating>? ratings,
    required double? avgRating,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Rating with _$Rating {
  const factory Rating({
    @JsonKey(name: '_id') String? id,
    String? name,
    double? rating,
    String? comment,
    String? userId,
    String? productId,
    String? createdAt,
    String? updatedAt,
    User? user,
  }) = _Rating;

  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? username,
    String? email,
    String? password,
    @JsonKey(name: 'DOB') String? dob,
    String? institution,
    String? picture,
    String? profession,
    String? uuid,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
