import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_result.freezed.dart';
part 'validation_result.g.dart';

// TODO, refactor could include other user data like name
enum ValidationType {
  email,
  phone,
  custom,
}

@freezed
class ValidationResult with _$ValidationResult {
  const factory ValidationResult({
    required String dataId,
    required ValidationType type,
    required String value,
  }) = _ValidationResult;

  factory ValidationResult.fromJson(Map<String, dynamic> json) =>
      _$ValidationResultFromJson(json);
}
