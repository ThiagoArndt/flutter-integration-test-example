import 'package:flutter/material.dart';

class Indicator extends StatefulWidget {
  const Indicator({super.key});

  @override
  State<Indicator> createState() => _IndicatorState();
}

class _IndicatorState extends State<Indicator> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 10,
            height: 10,
            child: CircularProgressIndicator(
              strokeWidth: 2,
            )),
      ],
    );
  }
}
