import 'package:flutter/material.dart';

class ScoreKeeper extends StatelessWidget {
  const ScoreKeeper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        // width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.cyanAccent[100],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            'assets/helmetemoji.jpg',
                            height: 70,
                            width: 70,
                            fit: BoxFit.cover,
                            color: Colors.white,
                            colorBlendMode: BlendMode.multiply,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "7",
                              style: TextStyle(fontSize: 46),
                            ),
                            Text(
                              "/12",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Text("Correct so far, this represents roughly 67%")
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.purple[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Skip >>",
                                style: TextStyle(fontSize: 26),
                              ),
                              Text(
                                "Move onto the next question & forfeit these this point",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.lightGreen[100],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "End Game",
                                style: TextStyle(fontSize: 26),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
