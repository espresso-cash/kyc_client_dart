import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ValidationResultKeys {
  unspecified('VALIDATION_RESULT_UNSPECIFIED'),
  email('VALIDATION_RESULT_EMAIL'),
  phone('VALIDATION_RESULT_PHONE'),
  smileId('VALIDATION_RESULT_SMILE_ID');

  const ValidationResultKeys(this.value);

  final String value;
}

@JsonEnum()
enum DataInfoKeys {
  unspecified('DATA_INFO_UNSPECIFIED'),
  email('DATA_INFO_EMAIL'),
  phone('DATA_INFO_PHONE'),
  jobId('DATA_INFO_JOB_ID'),
  firstName('DATA_INFO_FIRST_NAME'),
  middleName('DATA_INFO_MIDDLE_NAME'),
  lastName('DATA_INFO_LAST_NAME'),
  dateOfBirth('DATA_INFO_DOB'),
  countryCode('DATA_INFO_COUNTRY_CODE'),
  idType('DATA_INFO_ID_TYPE'),
  idNumber('DATA_INFO_ID_NUMBER');

  const DataInfoKeys(this.value);

  final String value;
}

@JsonEnum()
enum DataFileKeys {
  unspecified('DATA_FILE_UNSPECIFIED'),
  idCard('DATA_FILE_ID_CARD'),
  photo('DATA_FILE_PHOTO');

  const DataFileKeys(this.value);

  final String value;
}
