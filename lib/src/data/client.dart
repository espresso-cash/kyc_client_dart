import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:kyc_client_dart/src/config.dart';
import 'package:kyc_client_dart/src/data/intercetor.dart';
import 'package:retrofit/retrofit.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@RestApi(baseUrl: serverUrl)
abstract class KycApiClient {
  factory KycApiClient(String token, {String? baseUrl}) => _KycApiClient(
        Dio()..interceptors.add(AuthInterceptor(token)),
        baseUrl: baseUrl,
      );

  @POST('/v1/initStorage')
  Future<void> initStorage(@Body() InitStorageRequest request);

  @POST('/v1/partners/{partnerPK}')
  Future<PartnerModelDto> getPartnerInfo(@Path() String partnerPK);

  @POST('/v1/setData')
  Future<void> setData(@Body() Map<String, String> data);

  @POST('/v1/getData')
  Future<Map<String, String>> getData(@Body() Map<String, dynamic> body);

  @POST('/v1/createDownloadUrl')
  Future<DownloadUrlDto> createUploadUrl(@Body() Map<String, dynamic> body);
}

@freezed
class InitStorageRequest with _$InitStorageRequest {
  const factory InitStorageRequest({
    required String walletAddress,
    required String message,
    required String encryptedSecretKey,
    required String walletProofMessage,
    required String walletProofSignature,
  }) = _InitStorageRequest;

  factory InitStorageRequest.fromJson(Map<String, dynamic> json) =>
      _$InitStorageRequestFromJson(json);
}

@freezed
class PartnerModelDto with _$PartnerModelDto {
  const factory PartnerModelDto({
    required PartnerModel partner,
  }) = _PartnerModelDto;

  factory PartnerModelDto.fromJson(Map<String, dynamic> json) =>
      _$PartnerModelDtoFromJson(json);
}

@freezed
class DownloadUrlDto with _$DownloadUrlDto {
  const factory DownloadUrlDto({
    required String data,
  }) = _DownloadUrlDto;

  factory DownloadUrlDto.fromJson(Map<String, dynamic> json) =>
      _$DownloadUrlDtoFromJson(json);
}
