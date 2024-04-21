import 'package:dio/dio.dart';

class IotApiClient with DioMixin implements Dio {
  IotApiClient() {
    options = BaseOptions(
      baseUrl: 'https://maulana.ahlitani.com/opticon-be',
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 10),
    );

    httpClientAdapter = HttpClientAdapter();
  }
}
