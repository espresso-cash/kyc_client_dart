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
import '../models/v1_get_order_request.dart';
import '../models/v1_get_order_response.dart';
import '../models/v1_get_orders_request.dart';
import '../models/v1_get_orders_response.dart';
import '../models/v1_get_partner_orders_request.dart';
import '../models/v1_get_partner_orders_response.dart';
import '../models/v1_reject_order_request.dart';
import '../models/v1_reject_order_response.dart';

part 'order_service_client.g.dart';

@RestApi()
abstract class OrderServiceClient {
  factory OrderServiceClient(Dio dio, {String? baseUrl}) = _OrderServiceClient;

  @POST('/v1/acceptOrder')
  Future<V1AcceptOrderResponse> orderServiceAcceptOrder({
    @Body() required V1AcceptOrderRequest body,
  });

  @POST('/v1/completeOrder')
  Future<V1CompleteOrderResponse> orderServiceCompleteOrder({
    @Body() required V1CompleteOrderRequest body,
  });

  @POST('/v1/createOffRampOrder')
  Future<V1CreateOffRampOrderResponse> orderServiceCreateOffRampOrder({
    @Body() required V1CreateOffRampOrderRequest body,
  });

  @POST('/v1/createOnRampOrder')
  Future<V1CreateOnRampOrderResponse> orderServiceCreateOnRampOrder({
    @Body() required V1CreateOnRampOrderRequest body,
  });

  @POST('/v1/failOrder')
  Future<V1FailOrderResponse> orderServiceFailOrder({
    @Body() required V1FailOrderRequest body,
  });

  @POST('/v1/getOrder')
  Future<V1GetOrderResponse> orderServiceGetOrder({
    @Body() required V1GetOrderRequest body,
  });

  @POST('/v1/getOrders')
  Future<V1GetOrdersResponse> orderServiceGetOrders();

  @POST('/v1/getPartnerOrders')
  Future<V1GetPartnerOrdersResponse> orderServiceGetPartnerOrders();

  @POST('/v1/rejectOrder')
  Future<V1RejectOrderResponse> orderServiceRejectOrder({
    @Body() required V1RejectOrderRequest body,
  });
}
