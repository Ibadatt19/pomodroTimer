import 'package:flutter/material.dart';
import 'package:Comp_350_final_project/timerservice.dart';
import 'package:Comp_350_final_project/widgets/page_3_currenttrack.dart';
import 'package:Comp_350_final_project/widgets/page_4_pauseplay.dart';
import 'package:Comp_350_final_project/widgets/page_5_click_desiredtime.dart';
import 'package:Comp_350_final_project/widgets/page_2_clockdesign.dart';
import 'package:provider/provider.dart';
import 'utils.dart';

class PomodroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Scaffold(
      backgroundColor: renderColor(provider.currentState),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: renderColor(provider.currentState),
        title: Text(
          "STUDY PLANNER",
          style:
              textStyle(25, Color.fromARGB(255, 255, 150, 58), FontWeight.w700),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Color.fromARGB(255, 255, 150, 58),
            ),
            iconSize: 40,
            onPressed: () =>
                Provider.of<TimerService>(context, listen: false).reset(),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 15),
            TimerCard(),
            SizedBox(
              height: 40,
            ),
            TimeOptions(),
            SizedBox(
              height: 30,
            ),
            TimeController(),
            SizedBox(
              height: 30,
            ),
            ProgressWidget()
            // implementation of the different widgets on the screen to display interactions.
          ],
        ),
      )),
    );
  }
}
