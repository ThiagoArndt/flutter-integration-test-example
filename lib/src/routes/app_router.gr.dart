// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter_integration_test_example/src/features/config/config_view.dart'
    as _i1;
import 'package:flutter_integration_test_example/src/features/general/general_view.dart'
    as _i2;
import 'package:flutter_integration_test_example/src/features/home/home_view.dart'
    as _i3;
import 'package:flutter_integration_test_example/src/features/login/login_view.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    ConfigView.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ConfigView(),
      );
    },
    GeneralView.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.GeneralView(),
      );
    },
    HomeView.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeView(),
      );
    },
    LoginView.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.LoginView(),
      );
    },
  };
}

/// generated route for
/// [_i1.ConfigView]
class ConfigView extends _i5.PageRouteInfo<void> {
  const ConfigView({List<_i5.PageRouteInfo>? children})
      : super(
          ConfigView.name,
          initialChildren: children,
        );

  static const String name = 'ConfigView';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.GeneralView]
class GeneralView extends _i5.PageRouteInfo<void> {
  const GeneralView({List<_i5.PageRouteInfo>? children})
      : super(
          GeneralView.name,
          initialChildren: children,
        );

  static const String name = 'GeneralView';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeView]
class HomeView extends _i5.PageRouteInfo<void> {
  const HomeView({List<_i5.PageRouteInfo>? children})
      : super(
          HomeView.name,
          initialChildren: children,
        );

  static const String name = 'HomeView';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginView]
class LoginView extends _i5.PageRouteInfo<void> {
  const LoginView({List<_i5.PageRouteInfo>? children})
      : super(
          LoginView.name,
          initialChildren: children,
        );

  static const String name = 'LoginView';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
