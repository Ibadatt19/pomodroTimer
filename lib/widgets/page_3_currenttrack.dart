import 'package:flutter/material.dart';
import 'package:Comp_350_final_project/timerservice.dart';
import 'package:Comp_350_final_project/utils.dart';
import 'package:provider/provider.dart';

class ProgressWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${provider.rounds}/4",
              style: textStyle(
                  30, const Color.fromARGB(255, 255, 150, 58), FontWeight.bold),
            ),
            Text(
              "${provider.goal}/12",
              style: textStyle(
                  30, const Color.fromARGB(255, 255, 150, 58), FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Round",
              style: textStyle(
                  25, Color.fromARGB(255, 255, 150, 58), FontWeight.bold),
            ),
            Text(
              "Goal",
              style: textStyle(
                  25, Color.fromARGB(255, 255, 150, 58), FontWeight.bold),
            )
          ],
        )
      ],
    );
  }
}
