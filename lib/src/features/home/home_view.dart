import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_integration_test_example/src/routes/app_router.gr.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: [
        ConfigView(),
        GeneralView(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SalomonBottomBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.settings),
              title: const Text('Config'),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.dashboard),
              title: const Text('General'),
              selectedColor: Colors.blue,
            ),
          ],
        );
      },
    );
  }
}
