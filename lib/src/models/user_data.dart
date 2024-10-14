import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_client_dart/src/api/protos/data.pb.dart';

part 'user_data.freezed.dart';

enum IdType {
  voterId,
  passport,
  driverLicense,
  other,
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    String? email,
    String? firstName,
    String? lastName,
    DateTime? dob,
    String? phone,
    String? countryCode,
    IdType? idType,
    String? idNumber,
    String? bankAccountNumber,
    String? bankCode,
    String? bankName,
    Uint8List? selfie,
  }) = _UserData;
}

IdType mapDocumentTypeToIdType(DocumentType documentType) {
  switch (documentType) {
    case DocumentType.DOCUMENT_TYPE_VOTER_ID:
      return IdType.voterId;
    // Add other cases as needed
    default:
      return IdType.other;
  }
}
