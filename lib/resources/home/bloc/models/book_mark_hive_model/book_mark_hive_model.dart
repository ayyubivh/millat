import 'package:hive/hive.dart';
part 'book_mark_hive_model.g.dart';

@HiveType(typeId: 1)
class BookMarktCollectionModel {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String image;
  @HiveField(4)
  final List<String> verseKey;

  BookMarktCollectionModel({
    required this.id,
    required this.verseKey,
    required this.name,
    required this.description,
    required this.image,
  });
}
