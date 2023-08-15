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

  NamazMethodDbModel copyWith({
    bool? autoDetectLocation,
    bool? automaticSetting,
    bool? showImsak,
    String? location,
    int? calculationMethod,
    int? asrCalculationMethod,
    int? highLatitudeMethods,
    int? manualCorrections,
  }) {
    return NamazMethodDbModel(
      autoDetectLocation: autoDetectLocation ?? this.autoDetectLocation,
      automaticSetting: automaticSetting ?? this.automaticSetting,
      showImsak: showImsak ?? this.showImsak,
      location: location ?? this.location,
      calculationMethod: calculationMethod ?? this.calculationMethod,
      asrCalculationMethod: asrCalculationMethod ?? this.asrCalculationMethod,
      highLatitudeMethods: highLatitudeMethods ?? this.highLatitudeMethods,
      manualCorrections: manualCorrections ?? this.manualCorrections,
    );
  }
}
