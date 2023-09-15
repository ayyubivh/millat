// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialUserModel _$$_SocialUserModelFromJson(Map<String, dynamic> json) =>
    _$_SocialUserModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : UserResult.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SocialUserModelToJson(_$_SocialUserModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_UserResult _$$_UserResultFromJson(Map<String, dynamic> json) =>
    _$_UserResult(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String?,
      isLogin: json['isLogin'] as bool?,
    );

Map<String, dynamic> _$$_UserResultToJson(_$_UserResult instance) =>
    <String, dynamic>{
      'user': instance.user,
      'token': instance.token,
      'isLogin': instance.isLogin,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['_id'] as String?,
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      uuid: json['uuid'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'uuid': instance.uuid,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
