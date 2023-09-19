import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:hive_flutter/adapters.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    Box<bool> isAuthenticated = Hive.box('isAuthenticated');
    log(router.currentPath);
    if (isAuthenticated.get('1') == false) {
      await router.replaceNamed('/login');
    } else {
      resolver.next(true);
    }
  }
}
