

import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:groovvee/constantes.dart';

import 'initialise.dart';

//  log("la valeur est donc ${ref.watch(isDarkTheme.notifier).state=ref.watch(isDarkTheme)}");
final isDarkTheme=StateProvider<bool>((ref)
{

  return interne_storage.read(getstorageColor) == null? false:
  jsonDecode(interne_storage.read(getstorageColor))==getblackColor?
  true:false;
});

