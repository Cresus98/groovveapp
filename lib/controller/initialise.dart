
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:groovvee/controller/providers/setting_provider.dart';

import '../models/view_model/settings/setting.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';


final interne_storage=GetStorage();



final settingsModel=NotifierProvider<Setting,SettingState>(Setting.new);



