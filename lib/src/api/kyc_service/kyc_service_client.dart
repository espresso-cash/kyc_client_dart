// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/v1_create_on_ramp_order_request.dart';
import '../models/v1_create_on_ramp_order_response.dart';
import '../models/v1_get_data_request.dart';
import '../models/v1_get_data_response.dart';
import '../models/v1_get_info_request.dart';
import '../models/v1_get_info_response.dart';
import '../models/v1_get_order_request.dart';
import '../models/v1_get_order_response.dart';
import '../models/v1_get_partner_info_request.dart';
import '../models/v1_get_partner_info_response.dart';
import '../models/v1_get_validation_result_request.dart';
import '../models/v1_get_validation_result_response.dart';
import '../models/v1_grant_access_request.dart';
import '../models/v1_grant_access_response.dart';
import '../models/v1_init_storage_request.dart';
import '../models/v1_init_storage_response.dart';
import '../models/v1_set_data_request.dart';
import '../models/v1_set_data_response.dart';
import '../models/v1_set_validation_result_request.dart';
import '../models/v1_set_validation_result_response.dart';

part 'kyc_service_client.g.dart';

@RestApi()
abstract class KycServiceClient {
  factory KycServiceClient(Dio dio, {String? baseUrl}) = _KycServiceClient;

  @POST('/v1/createOnRampOrder')
  Future<V1CreateOnRampOrderResponse> kycServiceCreateOnRampOrder({
    @Body() required V1CreateOnRampOrderRequest body,
  });

  @POST('/v1/getData')
  Future<V1GetDataResponse> kycServiceGetData({
    @Body() required V1GetDataRequest body,
  });

  @POST('/v1/getInfo')
  Future<V1GetInfoResponse> kycServiceGetInfo();

  @POST('/v1/getOrder')
  Future<V1GetOrderResponse> kycServiceGetOrder({
    @Body() required V1GetOrderRequest body,
  });

  @POST('/v1/getPartnerInfo')
  Future<V1GetPartnerInfoResponse> kycServiceGetPartnerInfo({
    @Body() required V1GetPartnerInfoRequest body,
  });

  @POST('/v1/getValidationResult')
  Future<V1GetValidationResultResponse> kycServiceGetValidationResult({
    @Body() required V1GetValidationResultRequest body,
  });

  @POST('/v1/grantAccess')
  Future<V1GrantAccessResponse> kycServiceGrantAccess({
    @Body() required V1GrantAccessRequest body,
  });

  @POST('/v1/initStorage')
  Future<V1InitStorageResponse> kycServiceInitStorage({
    @Body() required V1InitStorageRequest body,
  });

  @POST('/v1/setData')
  Future<V1SetDataResponse> kycServiceSetData({
    @Body() required V1SetDataRequest body,
  });

  @POST('/v1/setValidationResult')
  Future<V1SetValidationResultResponse> kycServiceSetValidationResult({
    @Body() required V1SetValidationResultRequest body,
  });
}
