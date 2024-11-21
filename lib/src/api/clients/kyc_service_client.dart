// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/v1_get_granted_access_partners_request.dart';
import '../models/v1_get_granted_access_partners_response.dart';
import '../models/v1_get_info_request.dart';
import '../models/v1_get_info_response.dart';
import '../models/v1_get_partner_info_request.dart';
import '../models/v1_get_partner_info_response.dart';
import '../models/v1_get_user_data_request.dart';
import '../models/v1_get_user_data_response.dart';
import '../models/v1_grant_access_request.dart';
import '../models/v1_grant_access_response.dart';
import '../models/v1_init_storage_request.dart';
import '../models/v1_init_storage_response.dart';
import '../models/v1_revoke_access_request.dart';
import '../models/v1_revoke_access_response.dart';
import '../models/v1_set_user_data_request.dart';
import '../models/v1_set_user_data_response.dart';
import '../models/v1_set_validation_data_request.dart';
import '../models/v1_set_validation_data_response.dart';

part 'kyc_service_client.g.dart';

@RestApi()
abstract class KycServiceClient {
  factory KycServiceClient(Dio dio, {String? baseUrl}) = _KycServiceClient;

  @POST('/v1/getGrantedAccessPartners')
  Future<V1GetGrantedAccessPartnersResponse>
      kycServiceGetGrantedAccessPartners();

  @POST('/v1/getInfo')
  Future<V1GetInfoResponse> kycServiceGetInfo({
    @Body() required V1GetInfoRequest body,
  });

  @POST('/v1/getPartnerInfo')
  Future<V1GetPartnerInfoResponse> kycServiceGetPartnerInfo({
    @Body() required V1GetPartnerInfoRequest body,
  });

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

  @POST('/v1/revokeAccess')
  Future<V1RevokeAccessResponse> kycServiceRevokeAccess({
    @Body() required V1RevokeAccessRequest body,
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
