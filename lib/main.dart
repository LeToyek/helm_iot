import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/bootstrap.dart';
import 'package:helm_iot/domain/routes/routes.dart';
import 'package:helm_iot/ui/pages/main_page/main_page.dart';
import 'package:helm_iot/ui/theme/theme.dart';
import 'package:helm_iot/ui/widgets/window_overlay/heart_beat_overlay.dart';

void main() {
  bootstrap();
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routes = ref.read(routesProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      routes: routes,
      initialRoute: MainPage.routePath,
    );
  }
}

// overlay entry point
@pragma("vm:entry-point")
void overlayMain() {
  bootstrap();
  runApp(const ProviderScope(
    child: OverlayApp(),
  ));
}

class OverlayApp extends ConsumerWidget {
  const OverlayApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
        theme: lightTheme,
        debugShowCheckedModeBanner: false,
        home: const HeartBeatOverlay());
  }
}
