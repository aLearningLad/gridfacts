import 'package:flutter/material.dart';

class ScoreKeeper extends StatelessWidget {
  const ScoreKeeper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        // width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.cyan[400], borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/helmet.jpg',
                        height: 70,
                        width: 70,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("7/12"),
                    Text("Correct so far")
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  children: [
                    Text("Image here"),
                    Text("7/12"),
                    Text("Skip question")
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
