// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

/*
part of 'auth_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  bool get isSigningIn => throw _privateConstructorUsedError;
  bool get isSigningUp => throw _privateConstructorUsedError;
  bool get isSigningOut => throw _privateConstructorUsedError;
  bool get isVerifyingCode => throw _privateConstructorUsedError;
  bool get isResendingCode => throw _privateConstructorUsedError;
  bool get isResettingPassword => throw _privateConstructorUsedError;
  List<Country> get countries => throw _privateConstructorUsedError;
  AppUser get currentUser => throw _privateConstructorUsedError;
  String get emailAddress => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get otpCode => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  int get timeLeft => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isSigningIn,
      bool isSigningUp,
      bool isSigningOut,
      bool isVerifyingCode,
      bool isResendingCode,
      bool isResettingPassword,
      List<Country> countries,
      AppUser currentUser,
      String emailAddress,
      String countryCode,
      String firstName,
      String lastName,
      String password,
      String otpCode,
      String token,
      int timeLeft});

  $AppUserCopyWith<$Res> get currentUser;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSigningIn = null,
    Object? isSigningUp = null,
    Object? isSigningOut = null,
    Object? isVerifyingCode = null,
    Object? isResendingCode = null,
    Object? isResettingPassword = null,
    Object? countries = null,
    Object? currentUser = null,
    Object? emailAddress = null,
    Object? countryCode = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? otpCode = null,
    Object? token = null,
    Object? timeLeft = null,
  }) {
    return _then(_value.copyWith(
      isSigningIn: null == isSigningIn
          ? _value.isSigningIn
          : isSigningIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isSigningUp: null == isSigningUp
          ? _value.isSigningUp
          : isSigningUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isSigningOut: null == isSigningOut
          ? _value.isSigningOut
          : isSigningOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyingCode: null == isVerifyingCode
          ? _value.isVerifyingCode
          : isVerifyingCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendingCode: null == isResendingCode
          ? _value.isResendingCode
          : isResendingCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isResettingPassword: null == isResettingPassword
          ? _value.isResettingPassword
          : isResettingPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: null == countries
          ? _value.countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<$Res> get currentUser {
    return $AppUserCopyWith<$Res>(_value.currentUser, (value) {
      return _then(_value.copyWith(currentUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSigningIn,
      bool isSigningUp,
      bool isSigningOut,
      bool isVerifyingCode,
      bool isResendingCode,
      bool isResettingPassword,
      List<Country> countries,
      AppUser currentUser,
      String emailAddress,
      String countryCode,
      String firstName,
      String lastName,
      String password,
      String otpCode,
      String token,
      int timeLeft});

  @override
  $AppUserCopyWith<$Res> get currentUser;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSigningIn = null,
    Object? isSigningUp = null,
    Object? isSigningOut = null,
    Object? isVerifyingCode = null,
    Object? isResendingCode = null,
    Object? isResettingPassword = null,
    Object? countries = null,
    Object? currentUser = null,
    Object? emailAddress = null,
    Object? countryCode = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? password = null,
    Object? otpCode = null,
    Object? token = null,
    Object? timeLeft = null,
  }) {
    return _then(_$_AuthState(
      isSigningIn: null == isSigningIn
          ? _value.isSigningIn
          : isSigningIn // ignore: cast_nullable_to_non_nullable
              as bool,
      isSigningUp: null == isSigningUp
          ? _value.isSigningUp
          : isSigningUp // ignore: cast_nullable_to_non_nullable
              as bool,
      isSigningOut: null == isSigningOut
          ? _value.isSigningOut
          : isSigningOut // ignore: cast_nullable_to_non_nullable
              as bool,
      isVerifyingCode: null == isVerifyingCode
          ? _value.isVerifyingCode
          : isVerifyingCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isResendingCode: null == isResendingCode
          ? _value.isResendingCode
          : isResendingCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isResettingPassword: null == isResettingPassword
          ? _value.isResettingPassword
          : isResettingPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      countries: null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
      currentUser: null == currentUser
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as AppUser,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      timeLeft: null == timeLeft
          ? _value.timeLeft
          : timeLeft // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.isSigningIn,
      required this.isSigningUp,
      required this.isSigningOut,
      required this.isVerifyingCode,
      required this.isResendingCode,
      required this.isResettingPassword,
      required final List<Country> countries,
      required this.currentUser,
      required this.emailAddress,
      required this.countryCode,
      required this.firstName,
      required this.lastName,
      required this.password,
      required this.otpCode,
      required this.token,
      required this.timeLeft})
      : _countries = countries;

  @override
  final bool isSigningIn;
  @override
  final bool isSigningUp;
  @override
  final bool isSigningOut;
  @override
  final bool isVerifyingCode;
  @override
  final bool isResendingCode;
  @override
  final bool isResettingPassword;
  final List<Country> _countries;
  @override
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  final AppUser currentUser;
  @override
  final String emailAddress;
  @override
  final String countryCode;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String password;
  @override
  final String otpCode;
  @override
  final String token;
  @override
  final int timeLeft;

  @override
  String toString() {
    return 'AuthState(isSigningIn: $isSigningIn, isSigningUp: $isSigningUp, isSigningOut: $isSigningOut, isVerifyingCode: $isVerifyingCode, isResendingCode: $isResendingCode, isResettingPassword: $isResettingPassword, countries: $countries, currentUser: $currentUser, emailAddress: $emailAddress, countryCode: $countryCode, firstName: $firstName, lastName: $lastName, password: $password, otpCode: $otpCode, token: $token, timeLeft: $timeLeft)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isSigningIn, isSigningIn) ||
                other.isSigningIn == isSigningIn) &&
            (identical(other.isSigningUp, isSigningUp) ||
                other.isSigningUp == isSigningUp) &&
            (identical(other.isSigningOut, isSigningOut) ||
                other.isSigningOut == isSigningOut) &&
            (identical(other.isVerifyingCode, isVerifyingCode) ||
                other.isVerifyingCode == isVerifyingCode) &&
            (identical(other.isResendingCode, isResendingCode) ||
                other.isResendingCode == isResendingCode) &&
            (identical(other.isResettingPassword, isResettingPassword) ||
                other.isResettingPassword == isResettingPassword) &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries) &&
            (identical(other.currentUser, currentUser) ||
                other.currentUser == currentUser) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.timeLeft, timeLeft) ||
                other.timeLeft == timeLeft));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isSigningIn,
      isSigningUp,
      isSigningOut,
      isVerifyingCode,
      isResendingCode,
      isResettingPassword,
      const DeepCollectionEquality().hash(_countries),
      currentUser,
      emailAddress,
      countryCode,
      firstName,
      lastName,
      password,
      otpCode,
      token,
      timeLeft);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isSigningIn,
      required final bool isSigningUp,
      required final bool isSigningOut,
      required final bool isVerifyingCode,
      required final bool isResendingCode,
      required final bool isResettingPassword,
      required final List<Country> countries,
      required final AppUser currentUser,
      required final String emailAddress,
      required final String countryCode,
      required final String firstName,
      required final String lastName,
      required final String password,
      required final String otpCode,
      required final String token,
      required final int timeLeft}) = _$_AuthState;

  @override
  bool get isSigningIn;
  @override
  bool get isSigningUp;
  @override
  bool get isSigningOut;
  @override
  bool get isVerifyingCode;
  @override
  bool get isResendingCode;
  @override
  bool get isResettingPassword;
  @override
  List<Country> get countries;
  @override
  AppUser get currentUser;
  @override
  String get emailAddress;
  @override
  String get countryCode;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get password;
  @override
  String get otpCode;
  @override
  String get token;
  @override
  int get timeLeft;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
*/