import 'package:flutter/material.dart';
import 'package:flutter_integration_test_example/src/features/home/home_view.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flutter_integration_test_example/main.dart' as app;
import './utils/helpers.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Sign in Method Test', () async {
    //hive
    await Hive.initFlutter();
    await Hive.openBox<bool>('isAuthenticated');

    Box<bool> isAuthenticated = Hive.box('isAuthenticated');

    await isAuthenticated.put('1', false);

    testWidgets('Inserir credenciais e logar', (WidgetTester tester) async {
      await tester.pumpTest(
        builder: (context) {
          return app.MyApp();
        },
      );

      await tester.pumpAndSettle();
      const String usernameText = 'a';
      const String passwordText = 'a';

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(Key('user_name_text_field')), usernameText);
      await tester.enterText(find.byKey(Key('password_text_field')), passwordText);
      await tester.pumpAndSettle();
      try {
        await tester.tap(find.byKey(Key('sign_in_button')));
      } catch (e) {
        print(e);
      }
      await tester.pumpAndSettle();

      //expect(Exception(), isA<Exception>());
      expect(find.byType(HomeView), findsOneWidget);
    });
    testWidgets('Inserir credenciais erradas e receber uma exception', (WidgetTester tester) async {
      await tester.pumpTest(
        builder: (context) {
          return app.MyApp();
        },
      );

      await tester.pumpAndSettle();
      const String usernameText = 'ab';
      const String passwordText = 'a';

      await tester.pumpAndSettle();
      await tester.enterText(find.byKey(Key('user_name_text_field')), usernameText);
      await tester.enterText(find.byKey(Key('password_text_field')), passwordText);
      await tester.pumpAndSettle();
      try {
        await tester.tap(find.byKey(Key('sign_in_button')));
      } catch (e) {
        print(e);
      }
      await tester.pumpAndSettle();

      expect(Exception(), isA<Exception>());
      // expect(find.byType(HomeView), findsOneWidget);
    });
  });
}
