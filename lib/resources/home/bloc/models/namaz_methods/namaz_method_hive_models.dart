// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'namaz_method_hive_models.g.dart';

@HiveType(typeId: 3)
class NamazMethodDbModel {
  @HiveField(0)
  final bool autoDetectLocation;
  @HiveField(1)
  final bool automaticLocation;
  @HiveField(2)
  final bool showImsak;
  @HiveField(3)
  final String location;
  @HiveField(4)
  final String calculationMethodName;
  @HiveField(5)
  final String asrCalculationMethod;
  @HiveField(6)
  final String highLatitudeMethods;
  @HiveField(7)
  final String manualCorrections;

  NamazMethodDbModel({
    required this.autoDetectLocation,
    required this.automaticLocation,
    required this.showImsak,
    required this.location,
    required this.calculationMethodName,
    required this.asrCalculationMethod,
    required this.highLatitudeMethods,
    required this.manualCorrections,
  });
}
