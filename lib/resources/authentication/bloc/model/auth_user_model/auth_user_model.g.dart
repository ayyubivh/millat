// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthUserModel _$$_AuthUserModelFromJson(Map<String, dynamic> json) =>
    _$_AuthUserModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthUserModelToJson(_$_AuthUserModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_Result _$$_ResultFromJson(Map<String, dynamic> json) => _$_Result(
      user: json['user'] == null
          ? null
          : UserProfile.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResultToJson(_$_Result instance) => <String, dynamic>{
      'user': instance.user,
    };

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      id: json['_id'] as String?,
      institution: json['institution'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      picture: json['picture'] as String?,
      profession: json['profession'] as String?,
      pohneNumber: json['phone_number'] as String?,
      dob: json['DOB'] as String?,
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'institution': instance.institution,
      'username': instance.username,
      'email': instance.email,
      'name': instance.name,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'picture': instance.picture,
      'profession': instance.profession,
      'phone_number': instance.pohneNumber,
      'DOB': instance.dob,
    };
