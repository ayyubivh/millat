import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_notification_model.g.dart';
part 'get_notification_model.freezed.dart';

@freezed
class NotificationModel with _$NotificationModel {
  factory NotificationModel({
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'error') String? error,
    @JsonKey(name: 'result') MessageResult? result,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
class MessageResult with _$MessageResult {
  factory MessageResult({
    @JsonKey(name: 'data') List<MessageData>? data,
  }) = _MessageResult;

  factory MessageResult.fromJson(Map<String, dynamic> json) =>
      _$MessageResultFromJson(json);
}

@freezed
class MessageData with _$MessageData {
  factory MessageData({
    @JsonKey(name: '_id') String? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'sendAt') String? sendAt,
    @JsonKey(name: 'userIds') List<String>? userIds,
    @JsonKey(name: 'isReadByUser') List<String>? isReadByUser,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _MessageData;

  factory MessageData.fromJson(Map<String, dynamic> json) =>
      _$MessageDataFromJson(json);
}
