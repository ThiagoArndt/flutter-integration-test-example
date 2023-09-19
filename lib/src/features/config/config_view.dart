import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ConfigView extends StatelessWidget {
  const ConfigView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'This is Config',
        textScaleFactor: 2.0,
        textAlign: TextAlign.center,
      ),
    );
  }
}
