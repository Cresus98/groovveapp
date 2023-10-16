// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'try.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Try _$TryFromJson(Map<String, dynamic> json) {
  return _Try.fromJson(json);
}

/// @nodoc
mixin _$Try {
  String get a => throw _privateConstructorUsedError;
  String get b => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TryCopyWith<Try> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TryCopyWith<$Res> {
  factory $TryCopyWith(Try value, $Res Function(Try) then) =
      _$TryCopyWithImpl<$Res, Try>;
  @useResult
  $Res call({String a, String b});
}

/// @nodoc
class _$TryCopyWithImpl<$Res, $Val extends Try> implements $TryCopyWith<$Res> {
  _$TryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TryCopyWith<$Res> implements $TryCopyWith<$Res> {
  factory _$$_TryCopyWith(_$_Try value, $Res Function(_$_Try) then) =
      __$$_TryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, String b});
}

/// @nodoc
class __$$_TryCopyWithImpl<$Res> extends _$TryCopyWithImpl<$Res, _$_Try>
    implements _$$_TryCopyWith<$Res> {
  __$$_TryCopyWithImpl(_$_Try _value, $Res Function(_$_Try) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_$_Try(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Try implements _Try {
  const _$_Try(this.a, this.b);

  factory _$_Try.fromJson(Map<String, dynamic> json) => _$$_TryFromJson(json);

  @override
  final String a;
  @override
  final String b;

  @override
  String toString() {
    return 'Try(a: $a, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Try &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, a, b);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TryCopyWith<_$_Try> get copyWith =>
      __$$_TryCopyWithImpl<_$_Try>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TryToJson(
      this,
    );
  }
}

abstract class _Try implements Try {
  const factory _Try(final String a, final String b) = _$_Try;

  factory _Try.fromJson(Map<String, dynamic> json) = _$_Try.fromJson;

  @override
  String get a;
  @override
  String get b;
  @override
  @JsonKey(ignore: true)
  _$$_TryCopyWith<_$_Try> get copyWith => throw _privateConstructorUsedError;
}
