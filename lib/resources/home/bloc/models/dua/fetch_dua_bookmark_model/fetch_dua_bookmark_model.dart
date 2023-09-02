import 'package:freezed_annotation/freezed_annotation.dart';

part 'fetch_dua_bookmark_model.g.dart';
part 'fetch_dua_bookmark_model.freezed.dart';

@freezed
class DuaBookMarkModel with _$DuaBookMarkModel {
  const factory DuaBookMarkModel({
    required int status,
    required String message,
    required String? error,
    required BookmarksData? result,
  }) = _DuaBookMarkModel;

  factory DuaBookMarkModel.fromJson(Map<String, dynamic> json) =>
      _$DuaBookMarkModelFromJson(json);
}

@freezed
class BookmarksData with _$BookmarksData {
  const factory BookmarksData({
    required List<Bookmarks> bookmarks,
  }) = _BookmarksData;

  factory BookmarksData.fromJson(Map<String, dynamic> json) =>
      _$BookmarksDataFromJson(json);
}

@freezed
class Bookmarks with _$Bookmarks {
  const factory Bookmarks({
    @JsonKey(name: "_id") required String id,
    required String userId,
    required List<Bookmark> bookmarks,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Bookmarks;

  factory Bookmarks.fromJson(Map<String, dynamic> json) =>
      _$BookmarksFromJson(json);
}

@freezed
class Bookmark with _$Bookmark {
  const factory Bookmark({
    required String duaId,
    required DateTime markedAt,
    @JsonKey(name: "_id") required String id,
  }) = _Bookmark;

  factory Bookmark.fromJson(Map<String, dynamic> json) =>
      _$BookmarkFromJson(json);
}
