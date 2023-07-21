// ValueNotifier<List<TodoModel>> todolistnotifier = ValueNotifier([]);
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:millat/utils/string_constants.dart';
import '../models/book_mark_hive_model/book_mark_hive_model.dart';

abstract class BookMarkDbFunctions {
  Future<void> addCollection(BookMarktCollectionModel obj);
  Future<void> editCollection(BookMarktCollectionModel obj, index);
  Future<List<BookMarktCollectionModel>> getAllBookmarkCollection();

  Future<void> removeCollection(String id);
}

class BookMarkDB implements BookMarkDbFunctions {
  BookMarkDB._internal();
  static BookMarkDB instance = BookMarkDB._internal();
  factory BookMarkDB() {
    return instance;
  }

  ValueNotifier<List<BookMarktCollectionModel>> bookMarkListNotifier =
      ValueNotifier([]);

  @override
  Future<void> addCollection(BookMarktCollectionModel obj) async {
    final _db = await Hive.openBox<BookMarktCollectionModel>(bookmarkDb);
    await _db.put(obj.id, obj);
  }

  Future<void> refresh() async {
    final list = await getAllBookmarkCollection();

    bookMarkListNotifier.value.clear();
    bookMarkListNotifier.value.addAll(list);
    bookMarkListNotifier.notifyListeners();
  }

  @override
  Future<List<BookMarktCollectionModel>> getAllBookmarkCollection() async {
    final _db = await Hive.openBox<BookMarktCollectionModel>(bookmarkDb);
    return _db.values.toList();
  }

  @override
  Future<void> removeCollection(String id) async {
    final _db = await Hive.openBox<BookMarktCollectionModel>(bookmarkDb);
    await _db.delete(id);
    refresh();
  }

  @override
  Future<void> editCollection(BookMarktCollectionModel obj, index) async {
    final db = await Hive.openBox<BookMarktCollectionModel>(bookmarkDb);
    final Map dbMap = db.toMap();
    dynamic desiredKey;
    dbMap.forEach((key, value) {
      if (value.id == index) {
        desiredKey = key;
      }
    });
    db.put(desiredKey, obj);
  }
}
