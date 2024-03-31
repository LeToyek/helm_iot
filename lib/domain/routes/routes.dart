import 'package:flutter/material.dart';
import 'package:helm_iot/ui/pages/iot_device_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routes.g.dart';

@riverpod
Map<String, Widget Function(BuildContext context)> routes(RoutesRef ref) {
  return {
    ReportPage.routePath: (context) => const ReportPage(),
  };
}
