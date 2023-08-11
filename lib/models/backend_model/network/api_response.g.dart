// GENERATED CODE - DO NOT MODIFY BY HAND

/*
part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiResponse _$$_ApiResponseFromJson(Map<String, dynamic> json) =>
    _$_ApiResponse(
      error: json['error'] as Map<String, dynamic>? ?? const {},
      data: json['data'] == null
          ? const AppUser()
          : AppUser.fromJson(json['data'] as Map<String, dynamic>),
      refreshToken: json['refresh_token'] as String? ?? '',
      accessToken: json['access_token'] as String? ?? '',
      tokenType: json['token_type'] as String? ?? '',
      message: json['message'] as String? ?? '',
      expiresIn: json['expires_in'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ApiResponseToJson(_$_ApiResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
      'refresh_token': instance.refreshToken,
      'access_token': instance.accessToken,
      'token_type': instance.tokenType,
      'message': instance.message,
      'expires_in': instance.expiresIn,
    };

*/