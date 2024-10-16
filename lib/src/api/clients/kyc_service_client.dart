// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/v1_accept_order_request.dart';
import '../models/v1_accept_order_response.dart';
import '../models/v1_complete_order_request.dart';
import '../models/v1_complete_order_response.dart';
import '../models/v1_create_off_ramp_order_request.dart';
import '../models/v1_create_off_ramp_order_response.dart';
import '../models/v1_create_on_ramp_order_request.dart';
import '../models/v1_create_on_ramp_order_response.dart';
import '../models/v1_fail_order_request.dart';
import '../models/v1_fail_order_response.dart';
import '../models/v1_get_info_request.dart';
import '../models/v1_get_info_response.dart';
import '../models/v1_get_order_request.dart';
import '../models/v1_get_order_response.dart';
import '../models/v1_get_orders_request.dart';
import '../models/v1_get_orders_response.dart';
import '../models/v1_get_partner_info_request.dart';
import '../models/v1_get_partner_info_response.dart';
import '../models/v1_get_partner_orders_request.dart';
import '../models/v1_get_partner_orders_response.dart';
import '../models/v1_get_user_data_request.dart';
import '../models/v1_get_user_data_response.dart';
import '../models/v1_grant_access_request.dart';
import '../models/v1_grant_access_response.dart';
import '../models/v1_init_storage_request.dart';
import '../models/v1_init_storage_response.dart';
import '../models/v1_reject_order_request.dart';
import '../models/v1_reject_order_response.dart';
import '../models/v1_set_user_data_request.dart';
import '../models/v1_set_user_data_response.dart';
import '../models/v1_set_validation_data_request.dart';
import '../models/v1_set_validation_data_response.dart';

part 'kyc_service_client.g.dart';

@RestApi()
abstract class KycServiceClient {
  factory KycServiceClient(Dio dio, {String? baseUrl}) = _KycServiceClient;

  @POST('/v1/acceptOrder')
  Future<V1AcceptOrderResponse> kycServiceAcceptOrder({
    @Body() required V1AcceptOrderRequest body,
  });

  @POST('/v1/completeOrder')
  Future<V1CompleteOrderResponse> kycServiceCompleteOrder({
    @Body() required V1CompleteOrderRequest body,
  });

  @POST('/v1/createOffRampOrder')
  Future<V1CreateOffRampOrderResponse> kycServiceCreateOffRampOrder({
    @Body() required V1CreateOffRampOrderRequest body,
  });

  @POST('/v1/createOnRampOrder')
  Future<V1CreateOnRampOrderResponse> kycServiceCreateOnRampOrder({
    @Body() required V1CreateOnRampOrderRequest body,
  });

  @POST('/v1/failOrder')
  Future<V1FailOrderResponse> kycServiceFailOrder({
    @Body() required V1FailOrderRequest body,
  });

  @POST('/v1/getInfo')
  Future<V1GetInfoResponse> kycServiceGetInfo({
    @Body() required V1GetInfoRequest body,
  });

  @POST('/v1/getOrder')
  Future<V1GetOrderResponse> kycServiceGetOrder({
    @Body() required V1GetOrderRequest body,
  });

  @POST('/v1/getOrders')
  Future<V1GetOrdersResponse> kycServiceGetOrders();

  @POST('/v1/getPartnerInfo')
  Future<V1GetPartnerInfoResponse> kycServiceGetPartnerInfo({
    @Body() required V1GetPartnerInfoRequest body,
  });

  @POST('/v1/getPartnerOrders')
  Future<V1GetPartnerOrdersResponse> kycServiceGetPartnerOrders();

  @POST('/v1/getUserData')
  Future<V1GetUserDataResponse> kycServiceGetUserData({
    @Body() required V1GetUserDataRequest body,
  });

  @POST('/v1/grantAccess')
  Future<V1GrantAccessResponse> kycServiceGrantAccess({
    @Body() required V1GrantAccessRequest body,
  });

  @POST('/v1/initStorage')
  Future<V1InitStorageResponse> kycServiceInitStorage({
    @Body() required V1InitStorageRequest body,
  });

  @POST('/v1/rejectOrder')
  Future<V1RejectOrderResponse> kycServiceRejectOrder({
    @Body() required V1RejectOrderRequest body,
  });

  @POST('/v1/setUserData')
  Future<V1SetUserDataResponse> kycServiceSetUserData({
    @Body() required V1SetUserDataRequest body,
  });

  @POST('/v1/setValidationData')
  Future<V1SetValidationDataResponse> kycServiceSetValidationData({
    @Body() required V1SetValidationDataRequest body,
  });
}
