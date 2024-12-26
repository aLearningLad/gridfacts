import 'package:flutter/material.dart';
import 'package:gridfacts/components/appbar.dart';
import 'package:gridfacts/components/lowerhalf.dart';
import 'package:gridfacts/components/scorekeeper.dart';
import 'package:gridfacts/components/timekeeper.dart';
import 'package:gridfacts/components/tophalf.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _score = 0;
  int _questionIndex = 0;

  @override
  void initState() {
    super.initState();
    Random random = Random();
    double randomIndex = random.nextDouble() * 4;
    _questionIndex = randomIndex.floor();
  }

  // increase the score
  void increaseScore() {
    if (_score < 12) {
      setState(() {
        _score++;
      });
    } else if (_score == 12) {
      _score = 0;
    }
  }

// skip to next question
  void skipToNext() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TopHalf(),
            LowerHalf(questionIndex: _questionIndex),
            TimeKeeper(),
            ScoreKeeper(score: _score, increaseScore: increaseScore)
          ],
        ),
      ),
    );
  }
}
