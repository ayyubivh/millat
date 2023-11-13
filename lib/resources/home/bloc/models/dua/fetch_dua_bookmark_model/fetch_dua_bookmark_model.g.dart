// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_dua_bookmark_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DuaBookMarkModelImpl _$$DuaBookMarkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DuaBookMarkModelImpl(
      status: json['status'] as int,
      message: json['message'] as String,
      error: json['error'] as String?,
      result: json['result'] == null
          ? null
          : BookmarksData.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DuaBookMarkModelImplToJson(
        _$DuaBookMarkModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'error': instance.error,
      'result': instance.result,
    };

_$BookmarksDataImpl _$$BookmarksDataImplFromJson(Map<String, dynamic> json) =>
    _$BookmarksDataImpl(
      bookmarks: (json['bookmarks'] as List<dynamic>)
          .map((e) => Bookmarks.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookmarksDataImplToJson(_$BookmarksDataImpl instance) =>
    <String, dynamic>{
      'bookmarks': instance.bookmarks,
    };

_$BookmarksImpl _$$BookmarksImplFromJson(Map<String, dynamic> json) =>
    _$BookmarksImpl(
      id: json['_id'] as String,
      userId: json['userId'] as String,
      bookmarks: (json['bookmarks'] as List<dynamic>)
          .map((e) => Bookmark.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$BookmarksImplToJson(_$BookmarksImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'bookmarks': instance.bookmarks,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$BookmarkImpl _$$BookmarkImplFromJson(Map<String, dynamic> json) =>
    _$BookmarkImpl(
      duaId: json['duaId'] as String,
      markedAt: DateTime.parse(json['markedAt'] as String),
      id: json['_id'] as String,
    );

Map<String, dynamic> _$$BookmarkImplToJson(_$BookmarkImpl instance) =>
    <String, dynamic>{
      'duaId': instance.duaId,
      'markedAt': instance.markedAt.toIso8601String(),
      '_id': instance.id,
    };
