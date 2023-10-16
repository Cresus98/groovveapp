import 'dart:async';
import 'dart:convert';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groovvee/controller/initialise.dart';
import 'package:groovvee/models/backend_model/app_user/app_user.dart';
import 'package:groovvee/models/testty/try.dart';
import 'package:groovvee/services/implementations/dio_service.dart';
import 'package:groovvee/views/core/extensions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../views/core/constants.dart';
import '../../backend_model/country/country.dart';



part 'auth_view_model.freezed.dart';
part 'auth_view_model.g.dart';

@riverpod

class Auth extends _$Auth {

  static const authorizationUrl = '/oauth2/token';
  static const accountsUrl = '/accounts';

  Timer? _resendTimer;

  @override
  AuthState build() {


    512.milliseconds.schedule(_listenForUserUpdates);
    ref.onDispose(() => _resendTimer?.cancel());
    return AuthState(
      token:
      interne_storage.read(accessTokenKey)?? '',
      countries: [...countries.map(Country.fromJson)],
      countryCode: const Country().code,
      currentUser: AppUser.fromJson(
        jsonDecode(interne_storage.read(currentUserKey) ?? '{}'),
      ),
      countrieschose:[],
      isResettingPassword: false,
      isVerifyingCode: false,
      isResendingCode: false,
      isSigningOut: false,
      isSigningIn: false,
      isSigningUp: false,
      emailAddress: 'attamahcelestine@gmail.com',
      firstName: 'Celestine',
      lastName: 'Attamah',
      password: "dont_API_me@123",
      timeLeft: 0,
      otpCode: '',
    );

  }


  void _listenForUserUpdates() async {
    while (true) {
      if (interne_storage.read(accessTokenKey)!=null) {}
      await 8.seconds.delay;
    }
  }




  Future<bool> resendCode() async {
    update(isResendingCode: true);

    final didResendCode = await 2.seconds.delay;

    _startResendCountdown();

    update(isResendingCode: false);

    return didResendCode;
  }

  Future<bool> verifyCode() async
  {

    update(isVerifyingCode: true);
    final didVerifyCode = await 2.seconds.delay;
    update(isVerifyingCode: false);
    return didVerifyCode;

  }

  /*
  Future<bool> signOut() async
  {
    update(isSigningOut: true);

    final didSignOut = false;
    //await storage.clear();

    update(isSigningOut: false);

    return didSignOut;
  }
  */

  Future<bool> signIn() async
  {
    update(isSigningIn: true);

    final didSignIn = await
    //http.dispatch(
    DioService().dispatch(
      httpRequest: DioService().request(
        requestEndpoint: authorizationUrl,
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        payload: {
          'password': state.password,
          'username': state.emailAddress,
          'client_secret': apiClientSecret,
          'grant_type': 'password',
          'client_id': apiClientId,
          'scope': 'default',
        },
        method: 'POST',
      ),
      onPositiveResponse: (response) {
        interne_storage.write(refreshTokenKey, jsonEncode(response.refreshToken));
        interne_storage.write(accessTokenKey, jsonEncode(response.accessToken));
        update(token: response.accessToken);
      },
    );

    update(isSigningIn: false);

    return didSignIn;
  }

  Future<bool> signUp() async
  {
    update(isSigningUp: true);

    final didSignUp = await DioService()
        .dispatch(
      onPositiveResponse: (response) => update(token: response.accessToken),
      httpRequest: DioService().request(
        requestEndpoint: authorizationUrl,
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
        payload: {
          'grant_type': 'client_credentials',
          'client_secret': apiClientSecret,
          'client_id': apiClientId,
        },
        method: 'POST',),
    ).then<bool>((didGetToken) {
      if (didGetToken) {
        return DioService().dispatch(
          onPositiveResponse: (response) {
            interne_storage.write(currentUserKey, jsonEncode(response.data));
            update(currentUser: response.data);
          },
          httpRequest: DioService().request(
            headers: {'Authorization': 'Bearer ${state.token}'},
            requestEndpoint: accountsUrl,
            payload: {
              'country': state.countryCode,
              'first_name': state.firstName,
              'email_address': state.emailAddress,
              'last_name': state.lastName,
              'password': state.password,
            },
            method: 'POST',
          ),
        );
      }

      return didGetToken;
    });

    update(isSigningUp: false);

    return didSignUp;
  }

  void _startResendCountdown()
  {
    update(timeLeft: 119);
    _resendTimer?.cancel();
    _resendTimer = Timer.periodic(1000.milliseconds, (timer) {
      if (state.timeLeft >= 0) {
        update(timeLeft: state.timeLeft - 1);
      } else {
        timer.cancel();
      }
    });
  }

  void update({
    bool? isSigningIn,
    bool? isSigningUp,
    bool? isSigningOut,
    bool? isVerifyingCode,
    bool? isResendingCode,
    bool? isResettingPassword,
    List<Country>? countries,
    List<Country>? countrieschose,
    AppUser? currentUser,
    String? emailAddress,
    String? countryCode,
    String? firstName,
    String? lastName,
    String? password,
    String? otpCode,
    String? token,
    int? timeLeft,
    bool? showBar,})
  {

    state = state.copyWith(
      isResettingPassword: isResettingPassword ?? state.isResettingPassword,
      isVerifyingCode: isVerifyingCode ?? state.isVerifyingCode,
      isResendingCode: isResendingCode ?? state.isResendingCode,
      emailAddress: emailAddress ?? state.emailAddress,
      isSigningOut: isSigningOut ?? state.isSigningOut,
      isSigningIn: isSigningIn ?? state.isSigningIn,
      isSigningUp: isSigningUp ?? state.isSigningUp,
      currentUser: currentUser ?? state.currentUser,
      countryCode: countryCode ?? state.countryCode,
      countries: countries ?? state.countries,
      countrieschose:countrieschose?? state.countrieschose,
      firstName: firstName ?? state.firstName,
      lastName: lastName ?? state.lastName,
      password: password ?? state.password,
      timeLeft: timeLeft ?? state.timeLeft,
      otpCode: otpCode ?? state.otpCode,
      token: token ?? state.token,
    );
  }
  





}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required bool isSigningIn,
    required bool isSigningUp,
    required bool isSigningOut,
    required bool isVerifyingCode,
    required bool isResendingCode,
    required bool isResettingPassword,
    required List<Country> countries,
    required List<Country> countrieschose,
    required AppUser currentUser,
    required String emailAddress,
    required String countryCode,
    required String firstName,
    required String lastName,
    required String password,
    required String otpCode,
    required String token,
    required int timeLeft,
  }) = _AuthState;
}
