import 'package:flutter/material.dart';
import 'package:Comp_350_final_project/timerservice.dart';
import 'package:Comp_350_final_project/utils.dart';
import 'package:provider/provider.dart';

class TimerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    final seconds = provider.currentDuration % 60;
    return Column(
      children: [
        //list providing the description
        Text(
          provider.currentState,
          style: textStyle(35, Color.fromARGB(255, 255, 150, 58),
              FontWeight.w700), // font color and weight
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  shape: BoxShape
                      .circle, // setting the shape of the box as desired
                  color: Color.fromARGB(255, 255, 150, 58),
                  boxShadow: [
                    BoxShadow(
                        color:
                            Color.fromARGB(255, 255, 186, 125).withOpacity(0.9),
                        spreadRadius: 13,
                        blurRadius: 4,
                        offset: Offset(0, 2))
                  ]),
              child: Stack(alignment: Alignment.center, children: [
                Positioned(
                  right: 120,
                  child: Text(
                      (provider.currentDuration ~/ 60)
                          .toString(), // helps me control the variable.
                      style: textStyle(35, renderColor(provider.currentState),
                          FontWeight.bold)),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  ":",
                  style: textStyle(
                      60, const Color.fromARGB(255, 0, 0, 0), FontWeight.bold),
                ),
                const SizedBox(width: 10),
                Positioned(
                  left: 120,
                  child: Text(
                      seconds == 0
                          ? "${seconds.round()}0"
                          : seconds.round().toString(),
                      style: textStyle(35, renderColor(provider.currentState),
                          FontWeight.bold)),
                ),
              ]),
            ),
          ],
        )
      ],
    );
  }
}
