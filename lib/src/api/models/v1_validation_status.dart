// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum V1ValidationStatus {
  @JsonValue('VALIDATION_STATUS_UNSPECIFIED')
  validationStatusUnspecified('VALIDATION_STATUS_UNSPECIFIED'),
  @JsonValue('VALIDATION_STATUS_PENDING')
  validationStatusPending('VALIDATION_STATUS_PENDING'),
  @JsonValue('VALIDATION_STATUS_APPROVED')
  validationStatusApproved('VALIDATION_STATUS_APPROVED'),
  @JsonValue('VALIDATION_STATUS_REJECTED')
  validationStatusRejected('VALIDATION_STATUS_REJECTED'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const V1ValidationStatus(this.json);

  factory V1ValidationStatus.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
