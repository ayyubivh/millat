// ValueNotifier<List<TodoModel>> todolistnotifier = ValueNotifier([]);

import 'package:hive/hive.dart';
import 'package:millat/utils/string_constants.dart';
import '../models/book_mark_hive_model/book_mark_hive_model.dart';

abstract class BookMarkDbFunctions {
  Future<void> addCollection(BookMarkCollectionModel obj);
  Future<void> editCollection(BookMarkCollectionModel obj, index);

  Future<List<BookMarkCollectionModel>> getAllBookmarkCollection();

  Future<void> removeCollection(String id);
}

class BookMarkDB implements BookMarkDbFunctions {
  BookMarkDB._internal();
  static BookMarkDB instance = BookMarkDB._internal();
  factory BookMarkDB() {
    return instance;
  }

  @override
  Future<void> addCollection(BookMarkCollectionModel obj) async {
    final db = await Hive.openBox<BookMarkCollectionModel>(bookmarkDb);
    await db.put(obj.id, obj);
  }

  @override
  Future<List<BookMarkCollectionModel>> getAllBookmarkCollection() async {
    final db = await Hive.openBox<BookMarkCollectionModel>(bookmarkDb);
    return db.values.toList();
  }

  @override
  Future<void> removeCollection(String id) async {
    final db = await Hive.openBox<BookMarkCollectionModel>(bookmarkDb);
    await db.delete(id);
  }

  @override
  Future<void> editCollection(BookMarkCollectionModel obj, index) async {
    final db = await Hive.openBox<BookMarkCollectionModel>(bookmarkDb);
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
