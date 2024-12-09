import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kyc_client_dart/kyc_client_dart.dart';

part 'validation_result.freezed.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
sealed class ValidationResult with _$ValidationResult {
  const factory ValidationResult.hash({
    required String dataId,
    required ValidationStatus status,
    required String hash,
  }) = HashValidationResult;

  const factory ValidationResult.custom({
    String? id,
    required String type,
    required String value,
  }) = CustomValidationResult;
}
