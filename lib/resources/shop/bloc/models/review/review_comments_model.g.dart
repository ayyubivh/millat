// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_comments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewCommentsModelImpl _$$ReviewCommentsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewCommentsModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewCommentsModelImplToJson(
        _$ReviewCommentsModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      ratingStats: (json['ratingStats'] as List<dynamic>?)
          ?.map((e) => RatingStats.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewComments: (json['reviewComments'] as List<dynamic>?)
          ?.map((e) => ReviewComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'ratingStats': instance.ratingStats,
      'reviewComments': instance.reviewComments,
    };

_$RatingStatsImpl _$$RatingStatsImplFromJson(Map<String, dynamic> json) =>
    _$RatingStatsImpl(
      id: (json['_id'] as num?)?.toDouble(),
      count: json['count'] as int?,
    );

Map<String, dynamic> _$$RatingStatsImplToJson(_$RatingStatsImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'count': instance.count,
    };

_$ReviewCommentImpl _$$ReviewCommentImplFromJson(Map<String, dynamic> json) =>
    _$ReviewCommentImpl(
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

Map<String, dynamic> _$$ReviewCommentImplToJson(_$ReviewCommentImpl instance) =>
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

_$UserIdImpl _$$UserIdImplFromJson(Map<String, dynamic> json) => _$UserIdImpl(
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

Map<String, dynamic> _$$UserIdImplToJson(_$UserIdImpl instance) =>
    <String, dynamic>{
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
