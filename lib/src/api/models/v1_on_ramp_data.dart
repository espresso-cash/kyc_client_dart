// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_on_ramp_data.freezed.dart';
part 'v1_on_ramp_data.g.dart';

@Freezed()
class V1OnRampData with _$V1OnRampData {
  const factory V1OnRampData({
    required String cryptoAmount,
    required String cryptoCurrency,
  }) = _V1OnRampData;
  
  factory V1OnRampData.fromJson(Map<String, Object?> json) => _$V1OnRampDataFromJson(json);
}
