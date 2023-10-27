// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewCommentsModel _$$_ReviewCommentsModelFromJson(
        Map<String, dynamic> json) =>
    _$_ReviewCommentsModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ReviewCommentsModelToJson(
        _$_ReviewCommentsModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      ratingStats: (json['ratingStats'] as List<dynamic>?)
          ?.map((e) => RatingStats.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewComments: (json['reviewComments'] as List<dynamic>?)
          ?.map((e) => ReviewComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'ratingStats': instance.ratingStats,
      'reviewComments': instance.reviewComments,
    };

_$_RatingStats _$$_RatingStatsFromJson(Map<String, dynamic> json) =>
    _$_RatingStats(
      id: (json['_id'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$_RatingStatsToJson(_$_RatingStats instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'count': instance.count,
    };

_$_ReviewComment _$$_ReviewCommentFromJson(Map<String, dynamic> json) =>
    _$_ReviewComment(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      comment: json['comment'] as String?,
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      product: json['productId'] as String?,
      flagged: json['flagged'] as bool?,
      date: json['date'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_ReviewCommentToJson(_$_ReviewComment instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'comment': instance.comment,
      'userId': instance.userId,
      'productId': instance.product,
      'flagged': instance.flagged,
      'date': instance.date,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

_$_UserId _$$_UserIdFromJson(Map<String, dynamic> json) => _$_UserId(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      createdDate: json['createdAt'] as String?,
      updatedDate: json['updatedAt'] as String?,
      dateOfBirth: json['DOB'] as String?,
      institution: json['institution'] as String?,
      picture: json['picture'] as String?,
      profession: json['profession'] as String?,
      uuid: json['uuid'] as String?,
    );

Map<String, dynamic> _$$_UserIdToJson(_$_UserId instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'createdAt': instance.createdDate,
      'updatedAt': instance.updatedDate,
      'DOB': instance.dateOfBirth,
      'institution': instance.institution,
      'picture': instance.picture,
      'profession': instance.profession,
      'uuid': instance.uuid,
    };
