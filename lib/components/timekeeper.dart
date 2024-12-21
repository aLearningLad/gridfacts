import 'package:flutter/material.dart';

class TimeKeeper extends StatelessWidget {
  const TimeKeeper({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 4,
      children: [Text("Time remaining: "), Text("34"), Text("seconds")],
    );
  }
}
