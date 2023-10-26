

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/controller/initialise.dart';
import 'package:groovvee/models/view_model/settings/setting.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'setting_provider.g.dart';

/// we have three value of theme mode [system, light, dark]

@riverpod
class Settings extends _$Settings
{
  @override
  SettingState build() {
    // TODO: implement build
    return SettingState(themeMode: ThemeMode.values[interne_storage.read(themeModeIndexKey)??0],
        locale: Locale(interne_storage.read(languageCodeKey) ?? 'en'));
    // throw UnimplementedError();
  }



  void update({ThemeMode? themeMode, Locale? locale}) {


    state = SettingState(themeMode: themeMode ?? state.themeMode, locale: locale ?? state.locale);
    if (themeMode != null) {

      interne_storage.write(themeModeIndexKey, themeMode.index);

      //storage.setInt(themeModeIndexKey, themeMode.index);

    }

    if (locale != null) {
      interne_storage.write(languageCodeKey, locale.languageCode);

      //storage.setString(languageCodeKey, locale.languageCode);
    }
  }

}


class Setting extends Notifier<SettingState>
{
  @override
  SettingState build() {
    // TODO: implement build
    return SettingState(themeMode: ThemeMode.values[interne_storage.read(themeModeIndexKey)??0],
        locale: Locale(interne_storage.read(languageCodeKey) ?? 'en'));
    // throw UnimplementedError();
  }



  void update({ThemeMode? themeMode, Locale? locale}) {


    state = SettingState(themeMode: themeMode ?? state.themeMode, locale: locale ?? state.locale);
    if (themeMode != null) {

      interne_storage.write(themeModeIndexKey, themeMode.index);

      //storage.setInt(themeModeIndexKey, themeMode.index);

    }

    if (locale != null) {
      interne_storage.write(languageCodeKey, locale.languageCode);

      //storage.setString(languageCodeKey, locale.languageCode);
    }
  }

}


