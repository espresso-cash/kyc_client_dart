// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'v1_init_document_validation_request.freezed.dart';
part 'v1_init_document_validation_request.g.dart';

@Freezed()
class V1InitDocumentValidationRequest with _$V1InitDocumentValidationRequest {
  const factory V1InitDocumentValidationRequest({
    required String name,
    required String document,
    required String birthDate,
    required String selfieImage,
  }) = _V1InitDocumentValidationRequest;
  
  factory V1InitDocumentValidationRequest.fromJson(Map<String, Object?> json) => _$V1InitDocumentValidationRequestFromJson(json);
}
