import 'package:flutter/material.dart';
import 'package:Comp_350_final_project/timerservice.dart';
import 'package:Comp_350_final_project/utils.dart';
import 'package:provider/provider.dart';

class TimeOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 135),
      scrollDirection: Axis.horizontal,
      // use mapfunctions to run the selectable times in seconds
      child: Row(
          children: selectableTimes.map((time) {
        return InkWell(
          onTap: () => provider.selectedtime(double.parse(time)),
          child: Container(
            margin: EdgeInsets.only(left: 10),
            width: 70,
            height:
                50, // in the line below we will add the modification to change the UI if the selected time is clicked
            decoration: int.parse(time) == provider.selectedTime
                ? BoxDecoration(
                    color: const Color.fromARGB(255, 255, 150, 58),
                    borderRadius: BorderRadius.circular(5),
                  )
                : BoxDecoration(
                    border: Border.all(width: 3, color: Colors.white30),
                    borderRadius: BorderRadius.circular(5),
                  ),
            child: Center(
              child: Text(
                (int.parse(time) ~/ 60).toString(),
                style: textStyle(
                    25,
                    int.parse(time) == provider.selectedTime
                        ? renderColor(provider.currentState)
                        : Colors.white,
                    FontWeight.w700),
              ),
            ),
          ),
        );
      }).toList()),
    );
  }
}
