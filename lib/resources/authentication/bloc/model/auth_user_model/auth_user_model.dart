import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_user_model.g.dart';
part 'auth_user_model.freezed.dart';

@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    required int? status,
    required String? message,
    required String? error,
    required Result? result,
  }) = _AuthUserModel;

  factory AuthUserModel.fromJson(Map<String, dynamic> json) =>
      _$AuthUserModelFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({
    required UserProfile? user,
  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    @JsonKey(name: "_id") required String? id,
    required String? institution,
    required String? username,
    required String? email,
    required String? name,
    required String? createdAt,
    required String? uuid,
    required String? updatedAt,
    required String? picture,
    required String? profession,
    @JsonKey(name: "phone_number") required String? phoneNumber,
    @JsonKey(name: "DOB") required String? dob,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
