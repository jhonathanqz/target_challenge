import 'package:dio/dio.dart';
import 'package:dio_logger_request/dio_logger_request.dart';

import '../config/app_environment_setup.dart';
import '../config/environment.dart';

import 'client_factory.dart';

class ClientHTTP {
  ClientHTTP() {
    setupClient();
    setupClientJwt();
  }

  static final prettier = DioLoggerRequest();
  static Dio setupClientJwt() {
    final client = ClientFactory.baseClientJwt!;
    client.options.baseUrl = 'http://google.com.br';
    client.options.headers = {
      'Authorization': '',
    };
    client.options.followRedirects = false;
    client.options.connectTimeout = const Duration(seconds: 30);
    client.options.receiveTimeout = const Duration(seconds: 30);
    if (AppEnvironmentSetup.environment != Environment.production) {
      client.interceptors.add(prettier);
    }

    return client;
  }

  static Dio setupClient({
    String? urlBase,
  }) {
    final client = ClientFactory.baseClient!;

    client.options.baseUrl = 'http://google.com.br';
    client.options.headers = {
      'Authorization': '',
    };
    client.options.followRedirects = false;
    client.options.connectTimeout = const Duration(seconds: 30);
    client.options.receiveTimeout = const Duration(seconds: 30);
    if (AppEnvironmentSetup.environment != Environment.production) {
      client.interceptors.add(prettier);
    }
    return client;
  }

  static Dio get clientBase => setupClient();

  static Dio get clientJWT => setupClientJwt();
}
