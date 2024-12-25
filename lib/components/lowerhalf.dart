import 'package:flutter/material.dart';

class LowerHalf extends StatelessWidget {
  const LowerHalf({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.amber[
                100]), // make this container colour change when the question changes
        child: Column(
          children: [
            Text("Race wins . . ."),
            Text("WHich driver won Monaco the most times")
          ],
        ));
  }
}
