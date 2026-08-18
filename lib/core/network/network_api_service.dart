import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'base_api_service.dart';
import 'failure/app_exception.dart';
import 'failure/failure.dart';
import 'parser.dart';
import 'response/base_response.dart';
import 'response/response_mapper.dart';
import 'services/session_expiry_notifier.dart';

class NetworkApiService implements BaseApiService {
  NetworkApiService(this._dio, this._sessionExpiryNotifier);

  final Dio _dio;
  final SessionExpiryNotifier _sessionExpiryNotifier;

  Future<Either<AppException, BaseResponse<T>>> _request<T>(
    String endpoint,
    Future<Response<dynamic>> Function() requestCall,
    ResponseMapper<T> mapper, {
    bool allowBusinessFailureData = false,
  }) async {
    try {
      final response = await requestCall();

      return Parser.parseBaseResponse<T>(
        response,
        mapper,
        allowBusinessFailureData: allowBusinessFailureData,
      );
    } on DioException catch (exception) {
      final failure = Failure.handleDioError(exception);
      _notifyIfSessionExpired(endpoint, failure);
      return Left(failure);
    } on AppException catch (exception) {
      _notifyIfSessionExpired(endpoint, exception);
      return Left(exception);
    } catch (_) {
      return const Left(ParsingError());
    }
  }

  /// Endpoints reachable without an authenticated session. A 401 from these
  /// simply means invalid credentials/input and must NOT trigger the global
  /// logout, otherwise e.g. a failed login would kick the user out.
  static const Set<String> _preAuthEndpoints = {
    '/auth/login',
    '/auth/register',
    '/auth/forgot-password',
    '/auth/reset-password',
  };

  void _notifyIfSessionExpired(String endpoint, AppException failure) {
    if (failure is! SessionExpiry) return;
    if (_preAuthEndpoints.any(endpoint.contains)) return;
    _sessionExpiryNotifier.notify();
  }

  @override
  Future<Either<AppException, BaseResponse<T>>> getApi<T>(
    String endpoint,
    ResponseMapper<T> mapper, {
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool allowBusinessFailureData = false,
  }) {
    return _request<T>(
      endpoint,
      () => _dio.get<dynamic>(
        endpoint,
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      ),
      mapper,
      allowBusinessFailureData: allowBusinessFailureData,
    );
  }

  @override
  Future<Either<AppException, BaseResponse<T>>> postApi<T>(
    String endpoint,
    ResponseMapper<T> mapper, {
    dynamic body,
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool allowBusinessFailureData = false,
  }) {
    return _request<T>(
      endpoint,
      () => _dio.post<dynamic>(
        endpoint,
        data: body,
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      ),
      mapper,
      allowBusinessFailureData: allowBusinessFailureData,
    );
  }

  @override
  Future<Either<AppException, BaseResponse<T>>> putApi<T>(
    String endpoint,
    ResponseMapper<T> mapper, {
    dynamic body,
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool allowBusinessFailureData = false,
  }) {
    return _request<T>(
      endpoint,
      () => _dio.put<dynamic>(
        endpoint,
        data: body,
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      ),
      mapper,
      allowBusinessFailureData: allowBusinessFailureData,
    );
  }

  @override
  Future<Either<AppException, BaseResponse<T>>> patchApi<T>(
    String endpoint,
    ResponseMapper<T> mapper, {
    dynamic body,
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool allowBusinessFailureData = false,
  }) {
    return _request<T>(
      endpoint,
      () => _dio.patch<dynamic>(
        endpoint,
        data: body,
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      ),
      mapper,
      allowBusinessFailureData: allowBusinessFailureData,
    );
  }

  @override
  Future<Either<AppException, BaseResponse<T>>> deleteApi<T>(
    String endpoint,
    ResponseMapper<T> mapper, {
    dynamic body,
    Options? options,
    Map<String, dynamic>? queryParameters,
    CancelToken? cancelToken,
    bool allowBusinessFailureData = false,
  }) {
    return _request<T>(
      endpoint,
      () => _dio.delete<dynamic>(
        endpoint,
        data: body,
        options: options,
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      ),
      mapper,
      allowBusinessFailureData: allowBusinessFailureData,
    );
  }
}
