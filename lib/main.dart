import 'package:flutter/material.dart';
import 'package:Comp_350_final_project/page_1_mainscreen.dart';
import 'package:Comp_350_final_project/timerservice.dart';
import 'package:provider/provider.dart';
//import 'package:flutter_learn_the_basics/widgets/timercard.dart';

void main() {
  runApp(ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: PomodroScreen());
  }
}


// continue from 39:16