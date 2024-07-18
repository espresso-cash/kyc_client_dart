import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';
import 'package:kyc_client_dart/src/data/intercetor.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'client.freezed.dart';
part 'client.g.dart';

const serverUrl = 'https://kyc-backend-oxvpvdtvzq-ew.a.run.app';

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
  Future<GetDataResultDto> getData(@Body() Map<String, dynamic> body);

  @POST('/v1/createUploadUrl')
  Future<UploadUrlDto> createUploadUrl(@Body() Map<String, dynamic> body);

  @POST('/v1/createDownloadUrl')
  Future<DownloadUrlDto> createDownloadUrl(@Body() Map<String, dynamic> body);

  @POST('/v1/setValidationResult')
  Future<void> setValidationResult(@Body() Map<String, String> body);

  @POST('/v1/getValidationResult')
  Future<ValidationResultDto> getValidationResult(
    @Body() ValidationRequestDto request,
  );
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
class UploadUrlDto with _$UploadUrlDto {
  const factory UploadUrlDto({
    required String url,
  }) = _UploadUrlDto;

  factory UploadUrlDto.fromJson(Map<String, dynamic> json) =>
      _$UploadUrlDtoFromJson(json);
}

@freezed
class DownloadUrlDto with _$DownloadUrlDto {
  const factory DownloadUrlDto({
    required String data,
  }) = _DownloadUrlDto;

  factory DownloadUrlDto.fromJson(Map<String, dynamic> json) =>
      _$DownloadUrlDtoFromJson(json);
}

@freezed
class GetDataResultDto with _$GetDataResultDto {
  const factory GetDataResultDto({
    required Map<String, String> data,
  }) = _GetDataResultDto;

  factory GetDataResultDto.fromJson(Map<String, dynamic> json) =>
      _$GetDataResultDtoFromJson(json);
}

@freezed
class ValidationResultDto with _$ValidationResultDto {
  const factory ValidationResultDto({
    required Map<String, dynamic> data,
  }) = _ValidationResultDto;

  factory ValidationResultDto.fromJson(Map<String, dynamic> json) =>
      _$ValidationResultDtoFromJson(json);
}

@freezed
class ValidationRequestDto with _$ValidationRequestDto {
  const factory ValidationRequestDto({
    required String key,
    required String validatorPK,
  }) = _ValidationRequestDto;

  factory ValidationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ValidationRequestDtoFromJson(json);
}
