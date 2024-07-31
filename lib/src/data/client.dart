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
  Future<FileUrlResponseDto> createUploadUrl(@Body() Map<String, dynamic> body);

  @POST('/v1/createDownloadUrl')
  Future<FileUrlResponseDto> createDownloadUrl(
    @Body() Map<String, dynamic> body,
  );

  @POST('/v1/setValidationResult')
  Future<void> setValidationResult(@Body() DataEntry request);

  @POST('/v1/getValidationResult')
  Future<DataEntry> getValidationResult(@Body() ValidationRequestDto request);
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
    required List<DataEntry> data,
  }) = _SetDataRequestDto;

  factory SetDataRequestDto.fromJson(Map<String, dynamic> json) =>
      _$SetDataRequestDtoFromJson(json);
}

@freezed
class DataEntry with _$DataEntry {
  const factory DataEntry({
    required String key,
    required String value,
  }) = _DataEntry;

  factory DataEntry.fromJson(Map<String, dynamic> json) =>
      _$DataEntryFromJson(json);
}

@freezed
class FileUrlResponseDto with _$FileUrlResponseDto {
  const factory FileUrlResponseDto({
    required String url,
  }) = _FileUrlResponseDto;

  factory FileUrlResponseDto.fromJson(Map<String, dynamic> json) =>
      _$FileUrlResponseDtoFromJson(json);
}

@freezed
class GetDataResultDto with _$GetDataResultDto {
  const factory GetDataResultDto({
    required List<DataEntry> data,
  }) = _GetDataResultDto;

  factory GetDataResultDto.fromJson(Map<String, dynamic> json) =>
      _$GetDataResultDtoFromJson(json);
}

@freezed
class ValidationRequestDto with _$ValidationRequestDto {
  const factory ValidationRequestDto({
    required String key,
    required String validator,
  }) = _ValidationRequestDto;

  factory ValidationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$ValidationRequestDtoFromJson(json);
}
