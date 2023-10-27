// ValueNotifier<List<TodoModel>> todolistnotifier = ValueNotifier([]);

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

  @override
  Future<void> addCollection(BookMarktCollectionModel obj) async {
    final db = await Hive.openBox<BookMarktCollectionModel>(bookmarkDb);
    await db.put(obj.id, obj);
  }

  @override
  Future<List<BookMarktCollectionModel>> getAllBookmarkCollection() async {
    final db = await Hive.openBox<BookMarktCollectionModel>(bookmarkDb);
    return db.values.toList();
  }

  @override
  Future<void> removeCollection(String id) async {
    final db = await Hive.openBox<BookMarktCollectionModel>(bookmarkDb);
    await db.delete(id);
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
