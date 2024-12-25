import 'package:flutter/material.dart';

class LowerHalf extends StatefulWidget {
  const LowerHalf({super.key});

  @override
  State<LowerHalf> createState() => _LowerHalfState();
}

class _LowerHalfState extends State<LowerHalf> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> questionsList = [
      {"Who Monaco GP most times?": "Ayrton!"},
      {"Most race wins?": "Lewis!"},
      {"Human Error Champ?": "Max Verstappen"},
      {"Who is a snake in the paddock?": "Toto Wolff"},
    ];

    return Container(
        padding: EdgeInsets.all(10),
        height: 300,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.amber[
                100]), // make this container colour change when the question changes
        child: Column(
          spacing: 5,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "On Race Wins . . .",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
            Container(
              height: 225,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times Which driver won Monaco the most times",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
