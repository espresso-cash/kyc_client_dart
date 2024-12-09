// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_remove_custom_validation_data_request.freezed.dart';
part 'v1_remove_custom_validation_data_request.g.dart';

@Freezed()
class V1RemoveCustomValidationDataRequest with _$V1RemoveCustomValidationDataRequest {
  const factory V1RemoveCustomValidationDataRequest({
    required String dataId,
  }) = _V1RemoveCustomValidationDataRequest;
  
  factory V1RemoveCustomValidationDataRequest.fromJson(Map<String, Object?> json) => _$V1RemoveCustomValidationDataRequestFromJson(json);
}
