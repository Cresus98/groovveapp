// GENERATED CODE - DO NOT MODIFY BY HAND

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
      refreshToken: json['refreshToken'] as String? ?? '',
      accessToken: json['accessToken'] as String? ?? '',
      tokenType: json['tokenType'] as String? ?? '',
      message: json['message'] as String? ?? '',
      expiresIn: json['expiresIn'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ApiResponseToJson(_$_ApiResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'data': instance.data,
      'refreshToken': instance.refreshToken,
      'accessToken': instance.accessToken,
      'tokenType': instance.tokenType,
      'message': instance.message,
      'expiresIn': instance.expiresIn,
    };
