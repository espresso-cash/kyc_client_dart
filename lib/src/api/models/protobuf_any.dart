// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:freezed_annotation/freezed_annotation.dart';

part 'protobuf_any.freezed.dart';
part 'protobuf_any.g.dart';

@Freezed()
class ProtobufAny with _$ProtobufAny {
  const factory ProtobufAny({
    /// Incorrect name has been replaced. Original name: `@type`.
    @JsonKey(name: '@type')
    required String object0,
  }) = _ProtobufAny;
  
  factory ProtobufAny.fromJson(Map<String, Object?> json) => _$ProtobufAnyFromJson(json);
}
