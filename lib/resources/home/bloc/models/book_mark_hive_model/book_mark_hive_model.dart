import 'package:hive/hive.dart';
part 'book_mark_hive_model.g.dart';

@HiveType(typeId: 1)
class BookMarktCollectionModel {
  @HiveField(0)
  final String? id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String discription;
  @HiveField(3)
  final String image;
  @HiveField(4)
  final List<int> surahId;

  BookMarktCollectionModel({
    required this.id,
    required this.surahId,
    required this.name,
    required this.discription,
    required this.image,
  });
}
