/*
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_user.freezed.dart';
part 'app_user.g.dart';

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    @Default('assets/images/sample_profile_picture.png') String pictureUrl,
    @Default('janecooper@gmail.com') String emailAddress,
    @Default('Cooper') String lastName,
    @Default('Jane') String firstName,
    @Default('#JC') String accountId,
    @Default('NG') String country,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}


 */