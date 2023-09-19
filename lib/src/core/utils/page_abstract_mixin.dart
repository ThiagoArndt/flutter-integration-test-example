import 'package:flutter/material.dart';

mixin PageAbstractMixin {
  void launchScaffoldMessager(BuildContext context, {required String text, required Color color}) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
      backgroundColor: color,
    ));
  }
}
