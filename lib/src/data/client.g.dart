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

_$GetPartnerInfoRequestDtoImpl _$$GetPartnerInfoRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPartnerInfoRequestDtoImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$GetPartnerInfoRequestDtoImplToJson(
        _$GetPartnerInfoRequestDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$SetDataRequestDtoImpl _$$SetDataRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SetDataRequestDtoImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SetDataRequestDtoImplToJson(
        _$SetDataRequestDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DataEntryImpl _$$DataEntryImplFromJson(Map<String, dynamic> json) =>
    _$DataEntryImpl(
      key: json['key'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$$DataEntryImplToJson(_$DataEntryImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };

_$FileUrlResponseDtoImpl _$$FileUrlResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$FileUrlResponseDtoImpl(
      url: json['url'] as String,
    );

Map<String, dynamic> _$$FileUrlResponseDtoImplToJson(
        _$FileUrlResponseDtoImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$GetDataResultDtoImpl _$$GetDataResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GetDataResultDtoImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => DataEntry.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetDataResultDtoImplToJson(
        _$GetDataResultDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ValidationRequestDtoImpl _$$ValidationRequestDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ValidationRequestDtoImpl(
      key: json['key'] as String,
      validator: json['validator'] as String,
    );

Map<String, dynamic> _$$ValidationRequestDtoImplToJson(
        _$ValidationRequestDtoImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'validator': instance.validator,
    };

_$GetInfoResponseImpl _$$GetInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GetInfoResponseImpl(
      encryptedSecretKey: json['encryptedSecretKey'] as String,
      message: json['message'] as String,
      publicKey: json['publicKey'] as String,
      walletAddress: json['walletAddress'] as String,
    );

Map<String, dynamic> _$$GetInfoResponseImplToJson(
        _$GetInfoResponseImpl instance) =>
    <String, dynamic>{
      'encryptedSecretKey': instance.encryptedSecretKey,
      'message': instance.message,
      'publicKey': instance.publicKey,
      'walletAddress': instance.walletAddress,
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
  Future<PartnerModel> getPartnerInfo(GetPartnerInfoRequestDto request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PartnerModel>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/getPartnerInfo',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = PartnerModel.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<void> setData(SetDataRequestDto request) async {
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
  Future<FileUrlResponseDto> createUploadUrl(Map<String, dynamic> body) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<FileUrlResponseDto>(Options(
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
    final _value = FileUrlResponseDto.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<FileUrlResponseDto> createDownloadUrl(
      Map<String, dynamic> body) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<FileUrlResponseDto>(Options(
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
    final _value = FileUrlResponseDto.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<void> setValidationResult(DataEntry request) async {
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
  Future<DataEntry> getValidationResult(ValidationRequestDto request) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<DataEntry>(Options(
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
    final _value = DataEntry.fromJson(_result.data!);
    return _value;
  }

  @override
  Future<GetInfoResponse> getInfo() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GetInfoResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/v1/getInfo',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final _value = GetInfoResponse.fromJson(_result.data!);
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
