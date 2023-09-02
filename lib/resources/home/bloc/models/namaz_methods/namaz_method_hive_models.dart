import 'package:hive/hive.dart';

part 'namaz_method_hive_models.g.dart';

@HiveType(typeId: 3)
class NamazMethodDbModel {
  @HiveField(0)
  final bool autoDetectLocation;
  @HiveField(1)
  final bool automaticSetting;
  @HiveField(2)
  final bool showImsak;
  @HiveField(3)
  final String location;
  @HiveField(4)
  final int calculationMethod;
  @HiveField(5)
  final int asrCalculationMethod;
  @HiveField(6)
  final int highLatitudeMethods;
  @HiveField(7)
  final int manualCorrections;

  NamazMethodDbModel({
    required this.autoDetectLocation,
    required this.automaticSetting,
    required this.showImsak,
    required this.location,
    required this.calculationMethod,
    required this.asrCalculationMethod,
    required this.highLatitudeMethods,
    required this.manualCorrections,
  });
}
