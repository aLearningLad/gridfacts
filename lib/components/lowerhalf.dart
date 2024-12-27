import 'package:flutter/material.dart';

class LowerHalf extends StatefulWidget {
  const LowerHalf(
      {super.key,
      required this.questionIndex,
      required this.skipToNext,
      required this.questionsList});

  final int questionIndex;
  final VoidCallback skipToNext;
  final List<Map<String, String>> questionsList;

  @override
  State<LowerHalf> createState() => _LowerHalfState();
}

class _LowerHalfState extends State<LowerHalf> {
  String selectedAnswer = "";

  @override
  Widget build(BuildContext context) {
    // final List<Map<String, String>> questionsList = [
    //   {"Who Monaco GP most times?": "Ayrton!"},
    //   {"Most race wins?": "Lewis!"},
    //   {"Human Error Champ?": "Max Verstappen"},
    //   {"Who is a snake in the paddock?": "Toto Wolff"},
    // ];

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

    String correctAnswer = "Brad Pitt";

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
                  widget.questionsList[widget.questionIndex].keys.first,
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
                  children: falseAnswers
                      .map((answer) => InkWell(
                            onTap: (() {
                              print("Yaya");
                              setState(() {
                                selectedAnswer = answer;
                                if (selectedAnswer == correctAnswer) {
                                  widget.skipToNext();
                                }
                              });
                            }),
                            child: Container(
                              height: 60,
                              width: double.infinity,
                              margin: EdgeInsets.fromLTRB(0, 8, 0, 9),
                              decoration: BoxDecoration(
                                  color: selectedAnswer == answer
                                      ? Colors.blue
                                      : Colors.black,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: (Text(
                                  answer,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                )),
                              ),
                            ),
                          ))
                      .toList(),
                ),
              ),
            )
          ],
        ));
  }
}
