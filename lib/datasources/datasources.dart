import 'package:helm_iot/datasources/iot_api_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'datasources.g.dart';

@riverpod
IotApiClient iotApiClient(IotApiClientRef ref) => IotApiClient();
