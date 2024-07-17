import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner.freezed.dart';
part 'partner.g.dart';

@freezed
class PartnerModel with _$PartnerModel {
  factory PartnerModel({
    required String name,
    required String publicKey,
  }) = _PartnerModel;

  factory PartnerModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerModelFromJson(json);
}
