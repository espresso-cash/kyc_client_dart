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

  @POST('/v1/getPartnerInfo')
  Future<PartnerModel> getPartnerInfo(
    @Body() GetPartnerInfoRequestDto request,
  );

  @POST('/v1/setData')
  Future<void> setData(@Body() SetDataRequestDto request);

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
class GetPartnerInfoRequestDto with _$GetPartnerInfoRequestDto {
  const factory GetPartnerInfoRequestDto({
    required String id,
  }) = _GetPartnerInfoRequestDto;

  factory GetPartnerInfoRequestDto.fromJson(Map<String, dynamic> json) =>
      _$GetPartnerInfoRequestDtoFromJson(json);
}

@freezed
class SetDataRequestDto with _$SetDataRequestDto {
  const factory SetDataRequestDto({
    required List<DataItem> data,
  }) = _SetDataRequestDto;

  factory SetDataRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SetDataRequestDtoFromJson(json);
}

@freezed
class DataItem with _$DataItem {
  const factory DataItem({
    required String key,
    required String value,
  }) = _DataItem;

  factory DataItem.fromJson(Map<String, dynamic> json) =>
      _$DataItemFromJson(json);
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
    required List<DataItem> data,
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
