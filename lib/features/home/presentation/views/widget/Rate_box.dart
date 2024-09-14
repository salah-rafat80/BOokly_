import 'package:flutter/material.dart';

class RateBox extends StatelessWidget {
  const RateBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star, color: Colors.amber),
        Text('4.8 (2390)'),
      ],
    );
  }
}
