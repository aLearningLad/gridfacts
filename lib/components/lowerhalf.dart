import 'package:flutter/material.dart';

class LowerHalf extends StatelessWidget {
  const LowerHalf({super.key, required this.questionIndex});

  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> questionsList = [
      {"Who Monaco GP most times?": "Ayrton!"},
      {"Most race wins?": "Lewis!"},
      {"Human Error Champ?": "Max Verstappen"},
      {"Who is a snake in the paddock?": "Toto Wolff"},
    ];

    final List<String> falseAnswers = [
      "Ayrton Senna",
      "Lewis Hamilton",
      "Max Verstappen",
      "Toto Wolf",
      "Heikki Kovaleinen",
      "Schumi",
      "Kimi",
      "Isak Hadjar",
      "Brad Pitt"
    ];

    return Container(
        padding: EdgeInsets.all(10),
        height: 250,
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
              height: 190,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      questionsList[questionIndex].keys.first,
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
