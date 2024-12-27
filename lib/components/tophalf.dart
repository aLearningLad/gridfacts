import 'package:flutter/material.dart';

class TopHalf extends StatelessWidget {
  const TopHalf(
      {super.key, required this.questionsList, required this.questionIndex});

  final VoidCallback skipToNext;
  final List<Map<String, String>> questionsList;
  final int questionIndex;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 100,
        maxHeight: 150,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  textAlign: TextAlign.center,
                  "   Monaco Grand Prix 5 times? Huh? Tell us bruv, who?!Who has won the Monaco Grand Prix 5 times? Huh? Tell us bruv, who?!"),
            )
          ],
        ),
      ),
    );
  }
}
