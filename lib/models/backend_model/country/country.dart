import 'package:freezed_annotation/freezed_annotation.dart';



part 'country.freezed.dart';
part 'country.g.dart';

@freezed
class Country with _$Country {
  const factory Country({
    @Default('Nigeria') String name,
    @Default('NG') String code,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}


// class Country{
//
//   String name,code;
//   Country({required this.name,required this.code});
//   factory Country.fromJson(Map<String, dynamic> json) =>
//       Country(name: json['name'],code: json['code']);
// }



