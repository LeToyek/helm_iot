import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/ui/pages/guidance_page/guidance_page.dart';
import 'package:helm_iot/ui/pages/iot_page/iot_device_page.dart';
import 'package:helm_iot/ui/theme/shadow.dart';
import 'package:helm_iot/ui/widgets/battery_chart.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    var nameState = "Lailatul Badriyah";
    var iotIdState = "5Rz3sB7a9P";
    var iotStatusState = "Connected";
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildAppBar(context, ref),
            SizedBox(
              height: (size.height / 5) - 32,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Dashboard",
                    style: textTheme.bodyLarge!.apply(
                        fontWeightDelta: 2, color: colorScheme.onBackground),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, IOTDevice.routePath);
                    },
                    child: Container(
                        height: size.height / 5,
                        width: size.width,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: colorScheme.onPrimary,
                            boxShadow: [generalShadow]),
                        child: Center(
                          child: Text(
                            "Perangkat IOT",
                            style: textTheme.bodyMedium!.apply(
                                fontWeightDelta: 2,
                                color: colorScheme.onBackground),
                          ),
                        )).animate(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      _boxContainerNavigator(
                        context,
                        imageUrl: 'assets/man_i.png',
                        title: "Panduan Sehat",
                        path: GuidancePage.routePath,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      _boxContainerNavigator(context,
                          imageUrl: 'assets/book_i.png',
                          title: "Panduan Pakai",
                          path: GuidancePage.routePath),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _boxContainerNavigator(context,
      {required String imageUrl, required String title, required String path}) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, path);
      },
      child: Container(
        height: size.height / 5,
        width: size.width / 2 - 32,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: colorScheme.onPrimary,
            boxShadow: [generalShadow]),
        child: Expanded(
            child: Column(
          children: [
            const Spacer(),
            Image.asset(imageUrl),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius:
                      const BorderRadius.vertical(bottom: Radius.circular(16)),
                  color: colorScheme.primary),
              child: Center(
                child: Text(
                  title,
                  style: textTheme.bodyMedium!
                      .apply(fontWeightDelta: 2, color: colorScheme.background),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context, WidgetRef ref) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    final bodyLarge = Theme.of(context).textTheme.bodyLarge;
    var nameState = "Lailatul Badriyah";
    var iotIdState = "5Rz3sB7a9P";
    var iotStatusState = "Connected";
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            padding: const EdgeInsets.all(40),
            height: (size.height / 6) + 40,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(32)),
              color: colorScheme.primary,
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        "Selamat Datang, ",
                        style: bodyLarge!.apply(color: colorScheme.onPrimary),
                      ),
                      Text(
                        "${showFirstName(nameState)}!",
                        style: bodyLarge.apply(
                            color: colorScheme.onPrimary, fontWeightDelta: 2),
                      ),
                      const Spacer(),
                      CircleAvatar(
                          radius: 24,
                          backgroundColor: colorScheme.onPrimary,
                          child: const CircleAvatar(
                              radius: 22,
                              backgroundImage: NetworkImage(
                                  "https://cdn.antaranews.com/cache/1200x800/2019/11/08/4489114E-F5A4-4788-B02E-C8B211BC6335.jpeg")))
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  )
                ],
              ),
            )),
        Positioned(
            bottom: -120,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                width: size.width * 0.9,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: colorScheme.onPrimary,
                    boxShadow: [generalShadow]),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const BatteryChart(),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(nameState,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .apply(
                                    fontWeightDelta: 2,
                                    color: colorScheme.onBackground)),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(iotIdState),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: colorScheme.surfaceVariant),
                            child: Text(iotStatusState,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                        color: colorScheme.onSurfaceVariant)))
                      ],
                    ))
                  ],
                ),
              ),
            ))
      ],
    );
  }

  String showFirstName(String name) {
    return name.split(" ")[0];
  }
}
