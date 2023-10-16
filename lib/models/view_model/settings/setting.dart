import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groovvee/controller/initialise.dart';

import '../../../constantes.dart';




/*
class Settings extends _$Settings {
  @override
  SettingsState build() {
    return SettingsState(
      themeMode: ThemeMode.values[storage.getInt(themeModeIndexKey) ?? 0],
      locale: Locale(storage.getString(languageCodeKey) ?? 'en'),
    );
  }

  void update({ThemeMode? themeMode, Locale? locale}) {
    state = state.copyWith(
      themeMode: themeMode ?? state.themeMode,
      locale: locale ?? state.locale,
    );

    if (themeMode != null) {
      storage.setInt(themeModeIndexKey, themeMode.index);
    }

    if (locale != null) {
      storage.setString(languageCodeKey, locale.languageCode);
    }
  }
}


class SettingsState with $SettingsState {
  const factory SettingsState({
    required ThemeMode themeMode,
    required Locale locale,
  }) = _SettingsState;
}

*/





class SettingState
{
   ThemeMode themeMode;
   Locale locale;

   SettingState({required this.themeMode, required this.locale});
}



class Settings extends Notifier<SettingState> {

   @override
   SettingState build() {
      // TODO: implement build
   return SettingState(themeMode: ThemeMode.values[interne_storage.read(themeModeIndexKey)??0],
       locale: Locale(interne_storage.read(languageCodeKey) ?? 'en'));
   }


   void update({ThemeMode? themeMode, Locale? locale}) {

      state =SettingState(themeMode: themeMode ?? state.themeMode, locale: locale ?? state.locale,);
      if (themeMode != null) {
         interne_storage.write(themeModeIndexKey,themeMode.index);
      }

      if (locale != null) {
         interne_storage.write(languageCodeKey,locale.languageCode);
      }
   }

}
