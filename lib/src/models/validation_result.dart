import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_result.freezed.dart';
part 'validation_result.g.dart';

@freezed
class ValidationResult with _$ValidationResult {
  const factory ValidationResult({
    required String type,
    required String data,
  }) = _ValidationResult;

  factory ValidationResult.fromJson(Map<String, dynamic> json) =>
      _$ValidationResultFromJson(json);
}
