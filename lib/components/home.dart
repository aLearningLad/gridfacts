import 'package:flutter/material.dart';
import 'package:gridfacts/components/appbar.dart';
import 'package:gridfacts/components/lowerhalf.dart';
import 'package:gridfacts/components/scorekeeper.dart';
import 'package:gridfacts/components/timekeeper.dart';
import 'package:gridfacts/components/tophalf.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [TopHalf(), LowerHalf(), TimeKeeper(), ScoreKeeper()],
        ),
      ),
    );
  }
}
