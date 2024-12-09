//
//  Generated code. Do not modify.
//  source: service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'get_info.pb.dart' as $2;
import 'get_partner_info.pb.dart' as $0;
import 'get_user_data.pb.dart' as $6;
import 'grant_access.pb.dart' as $3;
import 'init_storage.pb.dart' as $1;
import 'remove_custom_validation_data.pb.dart' as $10;
import 'remove_user_data.pb.dart' as $5;
import 'remove_validation_data.pb.dart' as $8;
import 'set_custom_validation_data.pb.dart' as $9;
import 'set_user_data.pb.dart' as $4;
import 'set_validation_data.pb.dart' as $7;

export 'service.pb.dart';

@$pb.GrpcServiceName('brij.storage.v1.StorageService')
class StorageServiceClient extends $grpc.Client {
  static final _$getPartnerInfo = $grpc.ClientMethod<$0.GetPartnerInfoRequest, $0.GetPartnerInfoResponse>(
      '/brij.storage.v1.StorageService/GetPartnerInfo',
      ($0.GetPartnerInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetPartnerInfoResponse.fromBuffer(value));
  static final _$initStorage = $grpc.ClientMethod<$1.InitStorageRequest, $1.InitStorageResponse>(
      '/brij.storage.v1.StorageService/InitStorage',
      ($1.InitStorageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.InitStorageResponse.fromBuffer(value));
  static final _$getInfo = $grpc.ClientMethod<$2.GetInfoRequest, $2.GetInfoResponse>(
      '/brij.storage.v1.StorageService/GetInfo',
      ($2.GetInfoRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetInfoResponse.fromBuffer(value));
  static final _$grantAccess = $grpc.ClientMethod<$3.GrantAccessRequest, $3.GrantAccessResponse>(
      '/brij.storage.v1.StorageService/GrantAccess',
      ($3.GrantAccessRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GrantAccessResponse.fromBuffer(value));
  static final _$setUserData = $grpc.ClientMethod<$4.SetUserDataRequest, $4.SetUserDataResponse>(
      '/brij.storage.v1.StorageService/SetUserData',
      ($4.SetUserDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.SetUserDataResponse.fromBuffer(value));
  static final _$removeUserData = $grpc.ClientMethod<$5.RemoveUserDataRequest, $5.RemoveUserDataResponse>(
      '/brij.storage.v1.StorageService/RemoveUserData',
      ($5.RemoveUserDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.RemoveUserDataResponse.fromBuffer(value));
  static final _$getUserData = $grpc.ClientMethod<$6.GetUserDataRequest, $6.GetUserDataResponse>(
      '/brij.storage.v1.StorageService/GetUserData',
      ($6.GetUserDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $6.GetUserDataResponse.fromBuffer(value));
  static final _$setValidationData = $grpc.ClientMethod<$7.SetValidationDataRequest, $7.SetValidationDataResponse>(
      '/brij.storage.v1.StorageService/SetValidationData',
      ($7.SetValidationDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $7.SetValidationDataResponse.fromBuffer(value));
  static final _$removeValidationData = $grpc.ClientMethod<$8.RemoveValidationDataRequest, $8.RemoveValidationDataResponse>(
      '/brij.storage.v1.StorageService/RemoveValidationData',
      ($8.RemoveValidationDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $8.RemoveValidationDataResponse.fromBuffer(value));
  static final _$setCustomValidationData = $grpc.ClientMethod<$9.SetCustomValidationDataRequest, $9.SetCustomValidationDataResponse>(
      '/brij.storage.v1.StorageService/SetCustomValidationData',
      ($9.SetCustomValidationDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $9.SetCustomValidationDataResponse.fromBuffer(value));
  static final _$removeCustomValidationData = $grpc.ClientMethod<$10.RemoveCustomValidationDataRequest, $10.RemoveCustomValidationDataResponse>(
      '/brij.storage.v1.StorageService/RemoveCustomValidationData',
      ($10.RemoveCustomValidationDataRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $10.RemoveCustomValidationDataResponse.fromBuffer(value));

  StorageServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetPartnerInfoResponse> getPartnerInfo($0.GetPartnerInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPartnerInfo, request, options: options);
  }

  $grpc.ResponseFuture<$1.InitStorageResponse> initStorage($1.InitStorageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$initStorage, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetInfoResponse> getInfo($2.GetInfoRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInfo, request, options: options);
  }

  $grpc.ResponseFuture<$3.GrantAccessResponse> grantAccess($3.GrantAccessRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$grantAccess, request, options: options);
  }

  $grpc.ResponseFuture<$4.SetUserDataResponse> setUserData($4.SetUserDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setUserData, request, options: options);
  }

  $grpc.ResponseFuture<$5.RemoveUserDataResponse> removeUserData($5.RemoveUserDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeUserData, request, options: options);
  }

  $grpc.ResponseFuture<$6.GetUserDataResponse> getUserData($6.GetUserDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserData, request, options: options);
  }

  $grpc.ResponseFuture<$7.SetValidationDataResponse> setValidationData($7.SetValidationDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setValidationData, request, options: options);
  }

  $grpc.ResponseFuture<$8.RemoveValidationDataResponse> removeValidationData($8.RemoveValidationDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeValidationData, request, options: options);
  }

  $grpc.ResponseFuture<$9.SetCustomValidationDataResponse> setCustomValidationData($9.SetCustomValidationDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$setCustomValidationData, request, options: options);
  }

  $grpc.ResponseFuture<$10.RemoveCustomValidationDataResponse> removeCustomValidationData($10.RemoveCustomValidationDataRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$removeCustomValidationData, request, options: options);
  }
}

@$pb.GrpcServiceName('brij.storage.v1.StorageService')
abstract class StorageServiceBase extends $grpc.Service {
  $core.String get $name => 'brij.storage.v1.StorageService';

  StorageServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetPartnerInfoRequest, $0.GetPartnerInfoResponse>(
        'GetPartnerInfo',
        getPartnerInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetPartnerInfoRequest.fromBuffer(value),
        ($0.GetPartnerInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.InitStorageRequest, $1.InitStorageResponse>(
        'InitStorage',
        initStorage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.InitStorageRequest.fromBuffer(value),
        ($1.InitStorageResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetInfoRequest, $2.GetInfoResponse>(
        'GetInfo',
        getInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetInfoRequest.fromBuffer(value),
        ($2.GetInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GrantAccessRequest, $3.GrantAccessResponse>(
        'GrantAccess',
        grantAccess_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GrantAccessRequest.fromBuffer(value),
        ($3.GrantAccessResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.SetUserDataRequest, $4.SetUserDataResponse>(
        'SetUserData',
        setUserData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.SetUserDataRequest.fromBuffer(value),
        ($4.SetUserDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.RemoveUserDataRequest, $5.RemoveUserDataResponse>(
        'RemoveUserData',
        removeUserData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.RemoveUserDataRequest.fromBuffer(value),
        ($5.RemoveUserDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetUserDataRequest, $6.GetUserDataResponse>(
        'GetUserData',
        getUserData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $6.GetUserDataRequest.fromBuffer(value),
        ($6.GetUserDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$7.SetValidationDataRequest, $7.SetValidationDataResponse>(
        'SetValidationData',
        setValidationData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $7.SetValidationDataRequest.fromBuffer(value),
        ($7.SetValidationDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$8.RemoveValidationDataRequest, $8.RemoveValidationDataResponse>(
        'RemoveValidationData',
        removeValidationData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $8.RemoveValidationDataRequest.fromBuffer(value),
        ($8.RemoveValidationDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$9.SetCustomValidationDataRequest, $9.SetCustomValidationDataResponse>(
        'SetCustomValidationData',
        setCustomValidationData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $9.SetCustomValidationDataRequest.fromBuffer(value),
        ($9.SetCustomValidationDataResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$10.RemoveCustomValidationDataRequest, $10.RemoveCustomValidationDataResponse>(
        'RemoveCustomValidationData',
        removeCustomValidationData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $10.RemoveCustomValidationDataRequest.fromBuffer(value),
        ($10.RemoveCustomValidationDataResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetPartnerInfoResponse> getPartnerInfo_Pre($grpc.ServiceCall call, $async.Future<$0.GetPartnerInfoRequest> request) async {
    return getPartnerInfo(call, await request);
  }

  $async.Future<$1.InitStorageResponse> initStorage_Pre($grpc.ServiceCall call, $async.Future<$1.InitStorageRequest> request) async {
    return initStorage(call, await request);
  }

  $async.Future<$2.GetInfoResponse> getInfo_Pre($grpc.ServiceCall call, $async.Future<$2.GetInfoRequest> request) async {
    return getInfo(call, await request);
  }

  $async.Future<$3.GrantAccessResponse> grantAccess_Pre($grpc.ServiceCall call, $async.Future<$3.GrantAccessRequest> request) async {
    return grantAccess(call, await request);
  }

  $async.Future<$4.SetUserDataResponse> setUserData_Pre($grpc.ServiceCall call, $async.Future<$4.SetUserDataRequest> request) async {
    return setUserData(call, await request);
  }

  $async.Future<$5.RemoveUserDataResponse> removeUserData_Pre($grpc.ServiceCall call, $async.Future<$5.RemoveUserDataRequest> request) async {
    return removeUserData(call, await request);
  }

  $async.Future<$6.GetUserDataResponse> getUserData_Pre($grpc.ServiceCall call, $async.Future<$6.GetUserDataRequest> request) async {
    return getUserData(call, await request);
  }

  $async.Future<$7.SetValidationDataResponse> setValidationData_Pre($grpc.ServiceCall call, $async.Future<$7.SetValidationDataRequest> request) async {
    return setValidationData(call, await request);
  }

  $async.Future<$8.RemoveValidationDataResponse> removeValidationData_Pre($grpc.ServiceCall call, $async.Future<$8.RemoveValidationDataRequest> request) async {
    return removeValidationData(call, await request);
  }

  $async.Future<$9.SetCustomValidationDataResponse> setCustomValidationData_Pre($grpc.ServiceCall call, $async.Future<$9.SetCustomValidationDataRequest> request) async {
    return setCustomValidationData(call, await request);
  }

  $async.Future<$10.RemoveCustomValidationDataResponse> removeCustomValidationData_Pre($grpc.ServiceCall call, $async.Future<$10.RemoveCustomValidationDataRequest> request) async {
    return removeCustomValidationData(call, await request);
  }

  $async.Future<$0.GetPartnerInfoResponse> getPartnerInfo($grpc.ServiceCall call, $0.GetPartnerInfoRequest request);
  $async.Future<$1.InitStorageResponse> initStorage($grpc.ServiceCall call, $1.InitStorageRequest request);
  $async.Future<$2.GetInfoResponse> getInfo($grpc.ServiceCall call, $2.GetInfoRequest request);
  $async.Future<$3.GrantAccessResponse> grantAccess($grpc.ServiceCall call, $3.GrantAccessRequest request);
  $async.Future<$4.SetUserDataResponse> setUserData($grpc.ServiceCall call, $4.SetUserDataRequest request);
  $async.Future<$5.RemoveUserDataResponse> removeUserData($grpc.ServiceCall call, $5.RemoveUserDataRequest request);
  $async.Future<$6.GetUserDataResponse> getUserData($grpc.ServiceCall call, $6.GetUserDataRequest request);
  $async.Future<$7.SetValidationDataResponse> setValidationData($grpc.ServiceCall call, $7.SetValidationDataRequest request);
  $async.Future<$8.RemoveValidationDataResponse> removeValidationData($grpc.ServiceCall call, $8.RemoveValidationDataRequest request);
  $async.Future<$9.SetCustomValidationDataResponse> setCustomValidationData($grpc.ServiceCall call, $9.SetCustomValidationDataRequest request);
  $async.Future<$10.RemoveCustomValidationDataResponse> removeCustomValidationData($grpc.ServiceCall call, $10.RemoveCustomValidationDataRequest request);
}
