// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'review_comments_model.g.dart';
part 'review_comments_model.freezed.dart';

@freezed
class ReviewCommentsModel with _$ReviewCommentsModel {
  factory ReviewCommentsModel({
    int? status,
    String? message,
    String? error,
    Result? result,
  }) = _ReviewCommentsModel;

  factory ReviewCommentsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewCommentsModelFromJson(json);
}

@freezed
class Result with _$Result {
  factory Result({
    Data? data,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class Data with _$Data {
  factory Data({
    @JsonKey(name: 'ratingStats') List<RatingStats>? ratingStats,
    @JsonKey(name: 'reviewComments') List<ReviewComment>? reviewComments,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class RatingStats with _$RatingStats {
  factory RatingStats({
    @JsonKey(name: '_id') double? id,
    int? count,
  }) = _RatingStats;

  factory RatingStats.fromJson(Map<String, dynamic> json) =>
      _$RatingStatsFromJson(json);
}

@freezed
class ReviewComment with _$ReviewComment {
  factory ReviewComment({
    @JsonKey(name: '_id') String? id,
    String? name,
    double? rating,
    String? comment,
    UserId? userId,
    @JsonKey(name: 'productId') String? product,
    bool? flagged,
    String? date,
    String? createdAt,
    String? updatedAt,
  }) = _ReviewComment;

  factory ReviewComment.fromJson(Map<String, dynamic> json) =>
      _$ReviewCommentFromJson(json);
}

@freezed
class UserId with _$UserId {
  factory UserId({
    @JsonKey(name: '_id') String? id,
    String? name,
    String? username,
    String? email,
    String? password,
    @JsonKey(name: 'createdAt') String? createdDate,
    @JsonKey(name: 'updatedAt') String? updatedDate,
    @JsonKey(name: 'DOB') String? dateOfBirth,
    String? institution,
    String? picture,
    String? profession,
    String? uuid,
  }) = _UserId;

  factory UserId.fromJson(Map<String, dynamic> json) => _$UserIdFromJson(json);
}
