import 'package:flutter/material.dart';
import 'package:gridfacts/components/appbar.dart';
import 'package:gridfacts/components/lowerhalf.dart';
import 'package:gridfacts/components/scorekeeper.dart';
import 'package:gridfacts/components/timekeeper.dart';
import 'package:gridfacts/components/tophalf.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _score = 0;

  void increaseScore() {
    setState(() {
      _score++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TopHalf(),
            LowerHalf(),
            TimeKeeper(),
            ScoreKeeper(score: _score, increaseScore: increaseScore)
          ],
        ),
      ),
    );
  }
}
