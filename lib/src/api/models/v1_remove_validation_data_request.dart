// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_remove_validation_data_request.freezed.dart';
part 'v1_remove_validation_data_request.g.dart';

@Freezed()
class V1RemoveValidationDataRequest with _$V1RemoveValidationDataRequest {
  const factory V1RemoveValidationDataRequest({
    required String dataId,
  }) = _V1RemoveValidationDataRequest;
  
  factory V1RemoveValidationDataRequest.fromJson(Map<String, Object?> json) => _$V1RemoveValidationDataRequestFromJson(json);
}
