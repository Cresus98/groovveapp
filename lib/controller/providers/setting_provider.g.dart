// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$SettingsHash() => r'6f7b054bd2ecd359337456ffb2e9449e7ae66496';

/// we have three value of theme mode [system, light, dark]
///
/// Copied from [Settings].
final settingsProvider = AutoDisposeNotifierProvider<Settings, SettingState>(
  Settings.new,
  name: r'settingsProvider',
  debugGetCreateSourceHash:
  const bool.fromEnvironment('dart.vm.product') ? null : _$SettingsHash,
);
typedef SettingsRef = AutoDisposeNotifierProviderRef<SettingState>;

abstract class _$Settings extends AutoDisposeNotifier<SettingState> {
  @override
  SettingState build();
}
