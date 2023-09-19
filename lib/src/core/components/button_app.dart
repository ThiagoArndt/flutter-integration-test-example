import 'package:flutter/material.dart';
import 'package:flutter_integration_test_example/src/core/components/indicator.dart';

class ButtonApp extends StatefulWidget {
  final Future<void> Function() onPressed;
  final String btnTitle;
  const ButtonApp({super.key, required this.onPressed, required this.btnTitle});

  @override
  State<ButtonApp> createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          !isLoading
              ? setState(() {
                  isLoading = true;
                  widget.onPressed().catchError((error, stackTrace) {
                    setState(() {
                      isLoading = false;
                    });
                    print('got error: $error');
                  });
                })
              : null;
        },
        child: isLoading ? Indicator() : Text(widget.btnTitle));
  }
}
