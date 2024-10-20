// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/v1_init_document_validation_request.dart';
import '../models/v1_init_document_validation_response.dart';
import '../models/v1_init_email_validation_request.dart';
import '../models/v1_init_email_validation_response.dart';
import '../models/v1_init_phone_validation_request.dart';
import '../models/v1_init_phone_validation_response.dart';
import '../models/v1_validate_email_request.dart';
import '../models/v1_validate_email_response.dart';
import '../models/v1_validate_phone_request.dart';
import '../models/v1_validate_phone_response.dart';

part 'validator_service_client.g.dart';

@RestApi()
abstract class ValidatorServiceClient {
  factory ValidatorServiceClient(Dio dio, {String? baseUrl}) = _ValidatorServiceClient;

  @POST('/v1/initDocumentValidation')
  Future<V1InitDocumentValidationResponse> validatorServiceInitDocumentValidation({
    @Body() required V1InitDocumentValidationRequest body,
  });

  @POST('/v1/initEmailValidation')
  Future<V1InitEmailValidationResponse> validatorServiceInitEmailValidation({
    @Body() required V1InitEmailValidationRequest body,
  });

  @POST('/v1/initPhoneValidation')
  Future<V1InitPhoneValidationResponse> validatorServiceInitPhoneValidation({
    @Body() required V1InitPhoneValidationRequest body,
  });

  @POST('/v1/validateEmail')
  Future<V1ValidateEmailResponse> validatorServiceValidateEmail({
    @Body() required V1ValidateEmailRequest body,
  });

  @POST('/v1/validatePhone')
  Future<V1ValidatePhoneResponse> validatorServiceValidatePhone({
    @Body() required V1ValidatePhoneRequest body,
  });
}
