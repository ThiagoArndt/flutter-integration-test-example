import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_integration_test_example/src/routes/app_router.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<bool>('isAuthenticated');

  Box<bool> isAuthenticated = Hive.box('isAuthenticated');

  await isAuthenticated.put('1', false);
  log(isAuthenticated.get('1').toString());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Integration Test Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}
