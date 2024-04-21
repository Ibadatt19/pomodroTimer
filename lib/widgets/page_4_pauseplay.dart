import 'package:flutter/material.dart';
import 'package:Comp_350_final_project/timerservice.dart';
import 'package:provider/provider.dart';

class TimeController extends StatefulWidget {
  @override
  _TimeControllerState createState() => _TimeControllerState();
}

class _TimeControllerState extends State<TimeController> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 150, 58),
          shape: BoxShape.circle),
      child: Center(
          child: IconButton(
        icon: provider.timerPlaying
            ? Icon(Icons.pause)
            : Icon(Icons.play_arrow_sharp), // it is on pause right now
        color: const Color.fromARGB(255, 0, 0, 0),
        iconSize: 55,
        onPressed: () {
          provider.timerPlaying
              ? Provider.of<TimerService>(context, listen: false).pause()
              : Provider.of<TimerService>(context, listen: false).start();
        }, //on pressed change state from pause to play function for this will be in timer service
      )),
    );
  }
}
