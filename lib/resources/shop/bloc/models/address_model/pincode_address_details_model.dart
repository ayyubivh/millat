// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
part 'pincode_address_details_model.freezed.dart';
part 'pincode_address_details_model.g.dart';

@freezed
class PincodeAddressModel with _$PincodeAddressModel {
  const factory PincodeAddressModel({
    @JsonKey(name: 'Message') required String? message,
    @JsonKey(name: 'Status') required String? status,
    @JsonKey(name: 'PostOffice') required List<PostOffice>? postOffice,
  }) = _PincodeAddressModel;

  factory PincodeAddressModel.fromJson(Map<String, dynamic> json) =>
      _$PincodeAddressModelFromJson(json);
}

@freezed
class PostOffice with _$PostOffice {
  const factory PostOffice({
    @JsonKey(name: 'Name') required String? name,
    @JsonKey(name: 'BranchType') required String? branchType,
    @JsonKey(name: 'DeliveryStatus') required String? deliveryStatus,
    @JsonKey(name: 'Circle') required String? circle,
    @JsonKey(name: 'District') required String? district,
    @JsonKey(name: 'Division') required String? division,
    @JsonKey(name: 'Region') required String? region,
    @JsonKey(name: 'Block') required String? block,
    @JsonKey(name: 'State') required String? state,
    @JsonKey(name: 'Country') required String? country,
    @JsonKey(name: 'Pincode') required String? pincode,
  }) = _PostOffice;

  factory PostOffice.fromJson(Map<String, dynamic> json) =>
      _$PostOfficeFromJson(json);
}
