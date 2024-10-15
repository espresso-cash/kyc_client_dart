import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_client_dart/src/models/id_type.dart';

part 'user_data.freezed.dart';

//TODO might remove this
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
