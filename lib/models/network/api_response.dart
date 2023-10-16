import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groovvee/models/backend_model/app_user/app_user.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed

class ApiResponse with _$ApiResponse {
  const factory ApiResponse({
    @Default({}) Map<String, dynamic> error,
    @Default(AppUser()) AppUser data,
    @Default('') String refreshToken,
    @Default('') String accessToken,
    @Default('') String tokenType,
    @Default('') String message,
    @Default(0) int expiresIn,
  }) = _ApiResponse;

  factory ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseFromJson(json);
}
