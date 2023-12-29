import 'package:freezed_annotation/freezed_annotation.dart';
part 'coin_collection_model.freezed.dart';
part 'coin_collection_model.g.dart';

@freezed
class CoinCollectionModel with _$CoinCollectionModel {
  const factory CoinCollectionModel({
    int? status,
    String? message,
    String? error,
    CoinCollectionResult? result,
  }) = _CoinCollectionModel;

  factory CoinCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CoinCollectionModelFromJson(json);
}

@freezed
class CoinCollectionResult with _$CoinCollectionResult {
  const factory CoinCollectionResult({
    required CoinCollectionData data,
  }) = _CoinCollectionResult;

  factory CoinCollectionResult.fromJson(Map<String, dynamic> json) =>
      _$CoinCollectionResultFromJson(json);
}

@freezed
class CoinCollectionData with _$CoinCollectionData {
  const factory CoinCollectionData({
    bool? isCollected,
    int? coins,
  }) = _CoinCollectionData;

  factory CoinCollectionData.fromJson(Map<String, dynamic> json) =>
      _$CoinCollectionDataFromJson(json);
}
