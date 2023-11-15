// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthUserModelImpl _$$AuthUserModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthUserModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthUserModelImplToJson(_$AuthUserModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$ResultImpl _$$ResultImplFromJson(Map<String, dynamic> json) => _$ResultImpl(
      user: json['user'] == null
          ? null
          : UserProfile.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultImplToJson(_$ResultImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
    };

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['_id'] as String?,
      institution: json['institution'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      createdAt: json['createdAt'] as String?,
      uuid: json['uuid'] as String?,
      updatedAt: json['updatedAt'] as String?,
      picture: json['picture'] as String?,
      profession: json['profession'] as String?,
      phoneNumber: json['phone_number'] as String?,
      dob: json['DOB'] as String?,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'institution': instance.institution,
      'username': instance.username,
      'email': instance.email,
      'name': instance.name,
      'createdAt': instance.createdAt,
      'uuid': instance.uuid,
      'updatedAt': instance.updatedAt,
      'picture': instance.picture,
      'profession': instance.profession,
      'phone_number': instance.phoneNumber,
      'DOB': instance.dob,
    };
