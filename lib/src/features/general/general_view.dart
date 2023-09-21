import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

@RoutePage()
class GeneralView extends StatefulWidget {
  const GeneralView({super.key});

  @override
  State<GeneralView> createState() => _GeneralViewState();
}

class _GeneralViewState extends State<GeneralView> {
  @override
  Widget build(BuildContext context) {
    Box<bool> isAuthenticated = Hive.box('isAuthenticated');
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'This is General',
            textScaleFactor: 2.0,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15),
          ElevatedButton(
              key: const Key('sign_out_button'),
              onPressed: () async {
                await isAuthenticated.put('1', false);
                log(isAuthenticated.get('1').toString());
                await context.router.replaceNamed('/');
              },
              child: Text('LogOut'))
        ],
      ),
    );
  }
}
