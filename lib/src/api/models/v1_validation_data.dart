// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_validation_data.freezed.dart';
part 'v1_validation_data.g.dart';

@Freezed()
class V1ValidationData with _$V1ValidationData {
  const factory V1ValidationData({
    required String email,
    required String phone,
    required String kycSmileId,
  }) = _V1ValidationData;
  
  factory V1ValidationData.fromJson(Map<String, Object?> json) => _$V1ValidationDataFromJson(json);
}
