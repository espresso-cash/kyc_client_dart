// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

import 'protobuf_any.dart';

part 'rpc_status.freezed.dart';
part 'rpc_status.g.dart';

@Freezed()
class RpcStatus with _$RpcStatus {
  const factory RpcStatus({
    required int code,
    required String message,
    required List<ProtobufAny> details,
  }) = _RpcStatus;
  
  factory RpcStatus.fromJson(Map<String, Object?> json) => _$RpcStatusFromJson(json);
}
