import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_error.freezed.dart';
part 'user_error.g.dart';

@freezed
class UserError with _$UserError {
  const factory UserError({
    required int code,
    required String message,
  }) = _UserError;

  factory UserError.fromJson(Map<String, Object?> json) =>
      _$UserErrorFromJson(json);
}
