import 'dart:developer';
import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:groovvee/views/utils/app_const.dart';
import 'package:intl/intl_standalone.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import '../../models/network/api_response.dart';
import '../interfaces/http_service.dart';





class DioService implements HttpService {
  static const _baseUrl = 'http://3.214.90.157:8080/v1';

  //static AppLocalizations? _l10n;

  late final _dio =
  Dio(
    BaseOptions(
      contentType: Headers.jsonContentType,
      validateStatus: (code) => (code ?? 500) < 500,
      connectTimeout: 32.seconds,
      receiveTimeout: 32.seconds,
      sendTimeout: 32.seconds,
      baseUrl: _baseUrl,
    ),
  )
    ..interceptors.add(
      PrettyDioLogger(
        logPrint: (stuff) => log('$stuff'),
        requestHeader: true,
        requestBody: true,
        maxWidth: 65536,
      ),
    )

  ;

  @override
  Future<bool> dispatch({
    required Future<ApiResponse> httpRequest,
    ApiResponseCallback? onPositiveResponse,
  }) async {
    try {
      final response = await httpRequest;
      if (response.error.isNotEmpty)
        {
        if (response.error['details'] == null ||
            response.error['details']['field_errors'] is! List)
        {
          Fluttertoast.showToast(msg: response.error['message']);
        } else
          {
          Fluttertoast.showToast(
            msg: response.error['details']['field_errors'][0]['message'],
          );
        }
      }
      else {
        onPositiveResponse?.call(response);
        if (response.message.isNotEmpty) {
          Fluttertoast.showToast(msg: response.message);
        }
      }
      return response.error.isEmpty;
    } on DioException catch (error) {

  /*
      _l10n ??= await AppLocalizations.delegate.load(
        Locale((await findSystemLocale()).split('_').first),
      );
*/

      switch (error.type) {
        case DioExceptionType.cancel:
          Fluttertoast.showToast(msg: AppString.requestWasCancelled);
          break;
        case DioExceptionType.connectionError:
        case DioExceptionType.connectionTimeout:
          Fluttertoast.showToast(msg: AppString.noInternetConnection);
          break;

        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          Fluttertoast.showToast(msg: AppString.requestTimedOut);
          break;

        default:
          Fluttertoast.showToast(msg: AppString.anErrorOccurred);
          break;
      }
    }
    return false;
  }

  @override
  Future<ApiResponse>
  request(
      {required String requestEndpoint,
        Map<String, dynamic>? headers,
    Object? payload,
    String? method,
  }) async {
    final response = await _dio.request(
      requestEndpoint,
      options: Options(method: method ?? 'GET', headers: headers),
      data: payload,
    );

    return ApiResponse.fromJson(response.data);
  }

}
