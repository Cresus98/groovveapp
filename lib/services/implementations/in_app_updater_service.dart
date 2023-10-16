import 'dart:developer';
import 'dart:io';


import '../../constantes.dart';

import '../interfaces/updater_service.dart';


/*
class InAppUpdaterService implements UpdaterService {
  @override
  void checkForUpdate() async {
    try {
      if (hasBeenDeployed &&
          Platform.isAndroid &&
          (await InAppUpdate.checkForUpdate()).updateAvailability ==
              UpdateAvailability.updateAvailable) {
        InAppUpdate.performImmediateUpdate();
      }
    } catch (bug) {
      log('$bug');
    }
  }
}
*/