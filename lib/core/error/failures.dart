import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class FailureData with _$FailureData {
  const factory FailureData.failureMessage({
    required String message,
  }) = FailureMessage;
}
