// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SocialUserModelImpl _$$SocialUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SocialUserModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : UserResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SocialUserModelImplToJson(
        _$SocialUserModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$UserResultImpl _$$UserResultImplFromJson(Map<String, dynamic> json) =>
    _$UserResultImpl(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
      isLogin: json['isLogin'] as bool?,
    );

Map<String, dynamic> _$$UserResultImplToJson(_$UserResultImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'isLogin': instance.isLogin,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      picture: json['picture'] as String?,
      phoneNumber: json['phone_number'] as String?,
      otp: json['otp'] as String?,
      socialId: json['socialId'] as String?,
      uuid: json['uuid'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'picture': instance.picture,
      'phone_number': instance.phoneNumber,
      'otp': instance.otp,
      'socialId': instance.socialId,
      'uuid': instance.uuid,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
