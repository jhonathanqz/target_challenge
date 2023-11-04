import 'package:dio/dio.dart';

import 'exception/api_dto.dart';
import 'exception/api_exception.dart';
import 'i_client.dart';

class Client implements IClient {
  final Dio _client;

  Client({
    required Dio client,
  }) : _client = client;

  @override
  Future<dynamic> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _client.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw ApiTimeoutException('Tempo de conexão excedido');
      }
      switch (e.response?.statusCode) {
        case 400:
          throw ApiBadRequestException(ApiDTO.buildMessageResponse(e.response));
        case 401:
          throw ApiUnauthorizedException(
              ApiDTO.buildMessageResponse(e.response));
        case 403:
          throw ApiForbiddenRequestException(
              ApiDTO.buildMessageResponse(e.response));
        case 404:
          throw ApiNotFoundException(ApiDTO.buildMessageResponse(e.response));
        case 412:
          throw ApiSessionExpiredException(
              ApiDTO.buildMessageResponse(e.response));
        case 500:
          throw ApiInternalErrorException(
              ApiDTO.buildMessageResponse(e.response));
        default:
          throw ApiErrorException(
            ApiDTO.buildMessageResponse(e.response),
          );
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _client.put(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw ApiTimeoutException('Tempo de conexão excedido');
      }
      switch (e.response?.statusCode) {
        case 400:
          throw ApiBadRequestException(ApiDTO.buildMessageResponse(e.response));
        case 401:
          throw ApiUnauthorizedException(
              ApiDTO.buildMessageResponse(e.response));
        case 403:
          throw ApiForbiddenRequestException(
              ApiDTO.buildMessageResponse(e.response));
        case 404:
          throw ApiNotFoundException(ApiDTO.buildMessageResponse(e.response));
        case 412:
          throw ApiSessionExpiredException(
              ApiDTO.buildMessageResponse(e.response));
        case 500:
          throw ApiInternalErrorException(
              ApiDTO.buildMessageResponse(e.response));
        default:
          throw ApiErrorException(
            ApiDTO.buildMessageResponse(e.response),
          );
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _client.patch(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw ApiTimeoutException('Tempo de conexão excedido');
      }
      switch (e.response?.statusCode) {
        case 400:
          throw ApiBadRequestException(ApiDTO.buildMessageResponse(e.response));
        case 401:
          throw ApiUnauthorizedException(
              ApiDTO.buildMessageResponse(e.response));
        case 403:
          throw ApiForbiddenRequestException(
              ApiDTO.buildMessageResponse(e.response));
        case 404:
          throw ApiNotFoundException(ApiDTO.buildMessageResponse(e.response));
        case 412:
          throw ApiSessionExpiredException(
              ApiDTO.buildMessageResponse(e.response));
        case 500:
          throw ApiInternalErrorException(
              ApiDTO.buildMessageResponse(e.response));
        default:
          throw ApiErrorException(
            ApiDTO.buildMessageResponse(e.response),
          );
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _client.delete(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw ApiTimeoutException('Tempo de conexão excedido');
      }
      switch (e.response?.statusCode) {
        case 400:
          throw ApiBadRequestException(ApiDTO.buildMessageResponse(e.response));
        case 401:
          throw ApiUnauthorizedException(
              ApiDTO.buildMessageResponse(e.response));
        case 403:
          throw ApiForbiddenRequestException(
              ApiDTO.buildMessageResponse(e.response));
        case 404:
          throw ApiNotFoundException(ApiDTO.buildMessageResponse(e.response));
        case 412:
          throw ApiSessionExpiredException(
              ApiDTO.buildMessageResponse(e.response));
        case 500:
          throw ApiInternalErrorException(
              ApiDTO.buildMessageResponse(e.response));
        default:
          throw ApiErrorException(
            ApiDTO.buildMessageResponse(e.response),
          );
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _client.get(
        path,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        throw ApiTimeoutException('Tempo de conexão excedido');
      }
      switch (e.response?.statusCode) {
        case 400:
          throw ApiBadRequestException(ApiDTO.buildMessageResponse(e.response));
        case 401:
          throw ApiUnauthorizedException(
              ApiDTO.buildMessageResponse(e.response));
        case 403:
          throw ApiForbiddenRequestException(
              ApiDTO.buildMessageResponse(e.response));
        case 404:
          throw ApiNotFoundException(ApiDTO.buildMessageResponse(e.response));
        case 412:
          throw ApiSessionExpiredException(
              ApiDTO.buildMessageResponse(e.response));
        case 500:
          throw ApiInternalErrorException(
              ApiDTO.buildMessageResponse(e.response));
        default:
          throw ApiErrorException(
            ApiDTO.buildMessageResponse(e.response),
          );
      }
    } catch (e) {
      rethrow;
    }
  }
}
