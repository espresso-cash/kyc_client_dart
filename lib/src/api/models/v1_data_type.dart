// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum V1DataType {
  @JsonValue('DATA_TYPE_UNSPECIFIED')
  dataTypeUnspecified('DATA_TYPE_UNSPECIFIED'),
  @JsonValue('DATA_TYPE_PHONE')
  dataTypePhone('DATA_TYPE_PHONE'),
  @JsonValue('DATA_TYPE_EMAIL')
  dataTypeEmail('DATA_TYPE_EMAIL'),
  @JsonValue('DATA_TYPE_NAME')
  dataTypeName('DATA_TYPE_NAME'),
  @JsonValue('DATA_TYPE_BIRTH_DATE')
  dataTypeBirthDate('DATA_TYPE_BIRTH_DATE'),
  @JsonValue('DATA_TYPE_DOCUMENT')
  dataTypeDocument('DATA_TYPE_DOCUMENT'),
  @JsonValue('DATA_TYPE_BANK_INFO')
  dataTypeBankInfo('DATA_TYPE_BANK_INFO'),
  @JsonValue('DATA_TYPE_SELFIE_IMAGE')
  dataTypeSelfieImage('DATA_TYPE_SELFIE_IMAGE'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const V1DataType(this.json);

  factory V1DataType.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;
}
