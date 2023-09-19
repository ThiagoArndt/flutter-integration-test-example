import 'package:auto_route/auto_route.dart';
import 'package:flutter_integration_test_example/src/routes/auth_guard.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/login', page: LoginView.page),
        AutoRoute(path: '/', page: HomeView.page, initial: true, guards: [
          AuthGuard()
        ], children: [
          AutoRoute(path: 'general', page: GeneralView.page, guards: [AuthGuard()]),
          AutoRoute(path: 'config', page: ConfigView.page, guards: [AuthGuard()]),
        ]),
      ];
}
