

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groovvee/constantes.dart';
import 'package:groovvee/controller/initialise.dart';
import 'package:groovvee/models/view_model/settings/setting.dart';


/// we have three value of theme mode [system, light, dark]
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
     // storage.setInt(themeModeIndexKey, themeMode.index);
    }

    if (locale != null) {
      //storage.setString(languageCodeKey, locale.languageCode);
    }
  }
  
}