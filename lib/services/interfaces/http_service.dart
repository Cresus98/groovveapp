import '../../models/network/api_response.dart';


typedef ApiResponseCallback = void Function(ApiResponse);

abstract class HttpService {
  Future<bool> dispatch({
    required Future<ApiResponse> httpRequest,
    ApiResponseCallback? onPositiveResponse,
  });

  Future<ApiResponse> request({
    required String requestEndpoint,
    Map<String, dynamic>? headers,
    Object? payload,
    String? method,
  });
}

//HttpService get http => GetIt.I();
