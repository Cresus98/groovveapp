// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser _$$_AppUserFromJson(Map<String, dynamic> json) => _$_AppUser(
      pictureUrl: json['pictureUrl'] as String? ??
          'assets/images/sample_profile_picture.png',
      emailAddress: json['emailAddress'] as String? ?? 'janecooper@gmail.com',
      lastName: json['lastName'] as String? ?? 'Cooper',
      firstName: json['firstName'] as String? ?? 'Jane',
      accountId: json['accountId'] as String? ?? '#JC',
      country: json['country'] as String? ?? 'NG',
    );

Map<String, dynamic> _$$_AppUserToJson(_$_AppUser instance) =>
    <String, dynamic>{
      'pictureUrl': instance.pictureUrl,
      'emailAddress': instance.emailAddress,
      'lastName': instance.lastName,
      'firstName': instance.firstName,
      'accountId': instance.accountId,
      'country': instance.country,
    };
