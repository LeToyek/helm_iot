import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:helm_iot/ui/pages/main_page/pages_list.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});
  static const String routePath = "/main";

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pageList[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 1,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          unselectedLabelStyle: const TextStyle(color: Colors.black),
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black54,
              ),
              activeIcon: Icon(Icons.home),
              label: "Beranda",
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.insert_chart_rounded,
              ),
              icon: Icon(
                Icons.insert_chart_outlined_rounded,
                color: Colors.black54,
              ),
              label: "Laporan",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.black54,
              ),
              activeIcon: Icon(Icons.settings),
              label: "Pengaturan",
            ),
          ],
        ));
  }
}
