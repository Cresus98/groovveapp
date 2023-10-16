// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiResponse _$ApiResponseFromJson(Map<String, dynamic> json) {
  return _ApiResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiResponse {
  Map<String, dynamic> get error => throw _privateConstructorUsedError;
  AppUser get data => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  int get expiresIn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiResponseCopyWith<ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseCopyWith<$Res> {
  factory $ApiResponseCopyWith(
          ApiResponse value, $Res Function(ApiResponse) then) =
      _$ApiResponseCopyWithImpl<$Res, ApiResponse>;
  @useResult
  $Res call(
      {Map<String, dynamic> error,
      AppUser data,
      String refreshToken,
      String accessToken,
      String tokenType,
      String message,
      int expiresIn});

  $AppUserCopyWith<$Res> get data;
}

/// @nodoc
class _$ApiResponseCopyWithImpl<$Res, $Val extends ApiResponse>
    implements $ApiResponseCopyWith<$Res> {
  _$ApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = null,
    Object? refreshToken = null,
    Object? accessToken = null,
    Object? tokenType = null,
    Object? message = null,
    Object? expiresIn = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppUser,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get data {
    return $AppUserCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ApiResponseCopyWith<$Res>
    implements $ApiResponseCopyWith<$Res> {
  factory _$$_ApiResponseCopyWith(
          _$_ApiResponse value, $Res Function(_$_ApiResponse) then) =
      __$$_ApiResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, dynamic> error,
      AppUser data,
      String refreshToken,
      String accessToken,
      String tokenType,
      String message,
      int expiresIn});

  @override
  $AppUserCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ApiResponseCopyWithImpl<$Res>
    extends _$ApiResponseCopyWithImpl<$Res, _$_ApiResponse>
    implements _$$_ApiResponseCopyWith<$Res> {
  __$$_ApiResponseCopyWithImpl(
      _$_ApiResponse _value, $Res Function(_$_ApiResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? data = null,
    Object? refreshToken = null,
    Object? accessToken = null,
    Object? tokenType = null,
    Object? message = null,
    Object? expiresIn = null,
  }) {
    return _then(_$_ApiResponse(
      error: null == error
          ? _value._error
          : error // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as AppUser,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      tokenType: null == tokenType
          ? _value.tokenType
          : tokenType // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      expiresIn: null == expiresIn
          ? _value.expiresIn
          : expiresIn // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ApiResponse implements _ApiResponse {
  const _$_ApiResponse(
      {final Map<String, dynamic> error = const {},
      this.data = const AppUser(),
      this.refreshToken = '',
      this.accessToken = '',
      this.tokenType = '',
      this.message = '',
      this.expiresIn = 0})
      : _error = error;

  factory _$_ApiResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ApiResponseFromJson(json);

  final Map<String, dynamic> _error;
  @override
  @JsonKey()
  Map<String, dynamic> get error {
    if (_error is EqualUnmodifiableMapView) return _error;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_error);
  }

  @override
  @JsonKey()
  final AppUser data;
  @override
  @JsonKey()
  final String refreshToken;
  @override
  @JsonKey()
  final String accessToken;
  @override
  @JsonKey()
  final String tokenType;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final int expiresIn;

  @override
  String toString() {
    return 'ApiResponse(error: $error, data: $data, refreshToken: $refreshToken, accessToken: $accessToken, tokenType: $tokenType, message: $message, expiresIn: $expiresIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ApiResponse &&
            const DeepCollectionEquality().equals(other._error, _error) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.expiresIn, expiresIn) ||
                other.expiresIn == expiresIn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_error),
      data,
      refreshToken,
      accessToken,
      tokenType,
      message,
      expiresIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApiResponseCopyWith<_$_ApiResponse> get copyWith =>
      __$$_ApiResponseCopyWithImpl<_$_ApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApiResponseToJson(
      this,
    );
  }
}

abstract class _ApiResponse implements ApiResponse {
  const factory _ApiResponse(
      {final Map<String, dynamic> error,
      final AppUser data,
      final String refreshToken,
      final String accessToken,
      final String tokenType,
      final String message,
      final int expiresIn}) = _$_ApiResponse;

  factory _ApiResponse.fromJson(Map<String, dynamic> json) =
      _$_ApiResponse.fromJson;

  @override
  Map<String, dynamic> get error;
  @override
  AppUser get data;
  @override
  String get refreshToken;
  @override
  String get accessToken;
  @override
  String get tokenType;
  @override
  String get message;
  @override
  int get expiresIn;
  @override
  @JsonKey(ignore: true)
  _$$_ApiResponseCopyWith<_$_ApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
