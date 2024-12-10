import 'package:kyc_client_dart/src/api/models/v1_validation_status.dart';
import 'package:kyc_client_dart/src/api/protos/validation_status.pb.dart'
    as proto;

enum ValidationStatus {
  unspecified,
  pending,
  approved,
  rejected,
  unverified,
}

extension ValidationStatusExt on ValidationStatus {
  proto.ValidationStatus toProto() => switch (this) {
        ValidationStatus.unverified ||
        ValidationStatus.unspecified =>
          proto.ValidationStatus.VALIDATION_STATUS_UNSPECIFIED,
        ValidationStatus.pending =>
          proto.ValidationStatus.VALIDATION_STATUS_PENDING,
        ValidationStatus.approved =>
          proto.ValidationStatus.VALIDATION_STATUS_APPROVED,
        ValidationStatus.rejected =>
          proto.ValidationStatus.VALIDATION_STATUS_REJECTED,
      };

  V1ValidationStatus toApiValidationStatus() => switch (this) {
        ValidationStatus.unverified ||
        ValidationStatus.unspecified =>
          V1ValidationStatus.validationStatusUnspecified,
        ValidationStatus.pending => V1ValidationStatus.validationStatusPending,
        ValidationStatus.approved =>
          V1ValidationStatus.validationStatusApproved,
        ValidationStatus.rejected =>
          V1ValidationStatus.validationStatusRejected,
      };
}

extension ValidationStatusExtension on proto.ValidationStatus {
  ValidationStatus toProtoValidationStatus() => switch (this) {
        proto.ValidationStatus.VALIDATION_STATUS_UNSPECIFIED =>
          ValidationStatus.unspecified,
        proto.ValidationStatus.VALIDATION_STATUS_PENDING =>
          ValidationStatus.pending,
        proto.ValidationStatus.VALIDATION_STATUS_APPROVED =>
          ValidationStatus.approved,
        proto.ValidationStatus.VALIDATION_STATUS_REJECTED =>
          ValidationStatus.rejected,
        _ => ValidationStatus.unspecified,
      };
}

extension V1ValidationStatusExt on V1ValidationStatus {
  ValidationStatus toApiValidationStatus() => switch (this) {
        V1ValidationStatus.validationStatusUnspecified =>
          ValidationStatus.unspecified,
        V1ValidationStatus.validationStatusPending => ValidationStatus.pending,
        V1ValidationStatus.validationStatusApproved =>
          ValidationStatus.approved,
        V1ValidationStatus.validationStatusRejected =>
          ValidationStatus.rejected,
        _ => ValidationStatus.unspecified,
      };
}
