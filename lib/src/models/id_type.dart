import 'package:kyc_client_dart/src/api/protos/data.pbenum.dart';

enum IdType {
  voterId,
  passport,
  driverLicense,
  other,
}

extension DocumentTypeExtension on DocumentType {
  IdType toIdType() => switch (this) {
        DocumentType.DOCUMENT_TYPE_VOTER_ID => IdType.voterId,
        _ => IdType.other,
      };
}

extension IdTypeExtension on IdType {
  DocumentType toDocumentType() => switch (this) {
        IdType.voterId => DocumentType.DOCUMENT_TYPE_VOTER_ID,
        _ => DocumentType.DOCUMENT_TYPE_UNSPECIFIED,
      };
}
