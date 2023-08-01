// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_dua_bookmark_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DuaBookMarkModel _$$_DuaBookMarkModelFromJson(Map<String, dynamic> json) =>
    _$_DuaBookMarkModel(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : BookmarksData.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DuaBookMarkModelToJson(_$_DuaBookMarkModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$_BookmarksData _$$_BookmarksDataFromJson(Map<String, dynamic> json) =>
    _$_BookmarksData(
      bookmarks: (json['bookmarks'] as List<dynamic>)
          .map((e) => Bookmarks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BookmarksDataToJson(_$_BookmarksData instance) =>
    <String, dynamic>{
      'bookmarks': instance.bookmarks,
    };

_$_Bookmarks _$$_BookmarksFromJson(Map<String, dynamic> json) => _$_Bookmarks(
      id: json['_id'] as String,
      userId: json['userId'] as String,
      bookmarks: (json['bookmarks'] as List<dynamic>)
          .map((e) => Bookmark.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_BookmarksToJson(_$_Bookmarks instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'bookmarks': instance.bookmarks,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$_Bookmark _$$_BookmarkFromJson(Map<String, dynamic> json) => _$_Bookmark(
      duaId: json['duaId'] as String,
      markedAt: DateTime.parse(json['markedAt'] as String),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$_BookmarkToJson(_$_Bookmark instance) =>
    <String, dynamic>{
      'duaId': instance.duaId,
      'markedAt': instance.markedAt.toIso8601String(),
      '_id': instance.id,
    };
