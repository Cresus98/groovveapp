import 'package:flutter/cupertino.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'try.freezed.dart';
part 'try.g.dart';

@freezed
abstract class Try with _$Try
{
  const factory Try(String a, String b)=_Try;
  factory Try.fromJson(Map<String,dynamic>json)=>_$TryFromJson(json);
}

