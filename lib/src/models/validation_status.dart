import 'package:kyc_client_dart/src/api/protos/data.pb.dart' as proto;

enum ValidationStatus {
  unspecified,
  pending,
  approved,
  rejected,
  unverified,
}

extension ValidationStatusExtension on proto.ValidationStatus {
  ValidationStatus toValidationStatus() => switch (this) {
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
