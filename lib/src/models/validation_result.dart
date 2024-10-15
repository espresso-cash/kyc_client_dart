import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_result.freezed.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
sealed class ValidationResult with _$ValidationResult {
  const factory ValidationResult.hash({
    required String dataId,
    required String value,
  }) = HashValidationResult;

  const factory ValidationResult.custom({
    @Default('') String dataId,
    required String type,
    required String value,
  }) = CustomValidationResult;
}
