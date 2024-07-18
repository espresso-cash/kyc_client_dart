// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitStorageRequestImpl _$$InitStorageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$InitStorageRequestImpl(
      walletAddress: json['walletAddress'] as String,
      message: json['message'] as String,
      encryptedSecretKey: json['encryptedSecretKey'] as String,
      walletProofMessage: json['walletProofMessage'] as String,
      walletProofSignature: json['walletProofSignature'] as String,
    );

Map<String, dynamic> _$$InitStorageRequestImplToJson(
        _$InitStorageRequestImpl instance) =>
    <String, dynamic>{
      'walletAddress': instance.walletAddress,
      'message': instance.message,
      'encryptedSecretKey': instance.encryptedSecretKey,
      'walletProofMessage': instance.walletProofMessage,
      'walletProofSignature': instance.walletProofSignature,
    };

_$PartnerModelDtoImpl _$$PartnerModelDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PartnerModelDtoImpl(
      partner: PartnerModel.fromJson(json['partner'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PartnerModelDtoImplToJson(
        _$PartnerModelDtoImpl instance) =>
    <String, dynamic>{
      'partner': instance.partner,
    };

_$UploadUrlDtoImpl _$$UploadUrlDtoImplFromJson(Map<String, dynamic> json) =>
    _$UploadUrlDtoImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$UploadUrlDtoImplToJson(_$UploadUrlDtoImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$DownloadUrlDtoImpl _$$DownloadUrlDtoImplFromJson(Map<String, dynamic> json) =>
    _$DownloadUrlDtoImpl(
      data: json['data'] as String,
    );

Map<String, dynamic> _$$DownloadUrlDtoImplToJson(
        _$DownloadUrlDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$GetDataResultDtoImpl _$$GetDataResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDataResultDtoImpl(
      data: Map<String, String>.from(json['data'] as Map),
    );

Map<String, dynamic> _$$GetDataResultDtoImplToJson(
        _$GetDataResultDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ValidationResultDtoImpl _$$ValidationResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationResultDtoImpl(
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$ValidationResultDtoImplToJson(
        _$ValidationResultDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ValidationRequestDtoImpl _$$ValidationRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationRequestDtoImpl(
      key: json['key'] as String,
      validatorPK: json['validatorPK'] as String,
    );

Map<String, dynamic> _$$ValidationRequestDtoImplToJson(
        _$ValidationRequestDtoImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'validatorPK': instance.validatorPK,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _KycApiClient implements KycApiClient {
  _KycApiClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://kyc-backend-oxvpvdtvzq-ew.a.run.app';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<void> initStorage(InitStorageRequest request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/v1/initStorage',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
  }

  @override
  Future<PartnerModelDto> getPartnerInfo(String partnerPK) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PartnerModelDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/partners/${partnerPK}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = PartnerModelDto.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<void> setData(Map<String, String> data) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(data);
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/v1/setData',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
  }

  @override
  Future<GetDataResultDto> getData(Map<String, dynamic> body) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GetDataResultDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/getData',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = GetDataResultDto.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<UploadUrlDto> createUploadUrl(Map<String, dynamic> body) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UploadUrlDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/createUploadUrl',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = UploadUrlDto.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<DownloadUrlDto> createDownloadUrl(Map<String, dynamic> body) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DownloadUrlDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/createDownloadUrl',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = DownloadUrlDto.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<void> setValidationResult(Map<String, String> body) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    await _dio.fetch<void>(_setStreamType<void>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/v1/setValidationResult',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        ))));
  }

  @override
  Future<ValidationResultDto> getValidationResult(
      ValidationRequestDto request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ValidationResultDto>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/getValidationResult',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = ValidationResultDto.fromJson(_result.data!);
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
