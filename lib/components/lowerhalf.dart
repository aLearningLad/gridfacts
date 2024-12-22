import 'package:flutter/material.dart';

class LowerHalf extends StatelessWidget {
  const LowerHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.black),
    );
  }
}
