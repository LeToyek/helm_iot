import 'package:flutter/material.dart';
import 'package:helm_iot/ui/pages/auth_page/auth_page.dart';
import 'package:helm_iot/ui/pages/guidance_page/guidance_page.dart';
import 'package:helm_iot/ui/pages/iot_page/iot_device_page.dart';
import 'package:helm_iot/ui/pages/main_page/main_page.dart';
import 'package:helm_iot/ui/pages/prediction_page/prediciton_page.dart';
import 'package:helm_iot/ui/pages/qr_page/qr_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routes.g.dart';

@riverpod
Map<String, Widget Function(BuildContext context)> routes(RoutesRef ref) {
  return {
    MainPage.routePath: (context) => const MainPage(),
    IOTDevice.routePath: (context) => const IOTDevice(),
    GuidancePage.routePath: (context) => GuidancePage(),
    AuthPage.routePath: (context) => const AuthPage(),
    QRPage.routePath: (context) => const QRPage(),
    PredictionPage.routePath: (context) => const PredictionPage(),
  };
}
