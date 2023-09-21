import 'dart:async';
import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_integration_test_example/src/core/components/button_app.dart';
import 'package:flutter_integration_test_example/src/core/components/text_field_app.dart';
import 'package:flutter_integration_test_example/src/core/utils/page_abstract_mixin.dart';
import 'package:hive_flutter/adapters.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> with PageAbstractMixin {
  int navIndex = 0;
  TextEditingController userTextcontroller = TextEditingController();
  TextEditingController passwordTextcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Box<bool> isAuthenticated = Hive.box('isAuthenticated');
    log(isAuthenticated.get('1').toString());
    return Scaffold(
        body: Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Wrap(
          alignment: WrapAlignment.end,
          crossAxisAlignment: WrapCrossAlignment.center,
          runSpacing: 25,
          children: [
            TextFieldApp(
              key: const Key('user_name_text_field'),
              hint: 'Nome do Usuário',
              controller: userTextcontroller,
            ),
            TextFieldApp(
              key: const Key('password_text_field'),
              hint: 'Senha do Usuário',
              controller: passwordTextcontroller,
            ),
            ButtonApp(
              key: const Key('sign_in_button'),
              onPressed: () async {
                await Future.delayed(Duration(seconds: 2), () {});
                try {
                  if (userTextcontroller.text == "a" && passwordTextcontroller.text == "a") {
                    await isAuthenticated.put('1', true);
                    await context.router.replaceNamed('/');
                  } else {
                    throw Exception();
                  }
                } catch (e) {
                  launchScaffoldMessager(context, text: 'Usuário ou senha inválidos', color: Colors.red);
                  rethrow;
                }
              },
              btnTitle: 'Entrar',
            ),
          ],
        ),
      ),
    ));
  }
}
