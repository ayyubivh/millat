// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_user_model.g.dart';
part 'social_user_model.freezed.dart';

@freezed
class SocialUserModel with _$SocialUserModel {
  factory SocialUserModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'result') UserResult? result,
  }) = _SocialUserModel;

  factory SocialUserModel.fromJson(Map<String, dynamic> json) =>
      _$SocialUserModelFromJson(json);
}

@freezed
class UserResult with _$UserResult {
  factory UserResult({
    @JsonKey(name: 'user') User? user,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'isLogin') bool? isLogin,
  }) = _UserResult;

  factory UserResult.fromJson(Map<String, dynamic> json) =>
      _$UserResultFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'uuid') String? uuid,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
