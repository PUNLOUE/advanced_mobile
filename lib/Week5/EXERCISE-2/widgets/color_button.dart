import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Week5/EXERCISE-2/model/color_counters.dart';

import 'color_tap.dart';

class ColorTapsScreen extends StatelessWidget {
  const ColorTapsScreen({super.key, required int redTapCount, required int blueTapCount, required void Function() onRedTap, required void Function() onBlueTap,});

  @override
  Widget build(BuildContext context) {
    print("ColorTapsScreen rebuilt");
    return Scaffold(
      appBar: AppBar(title: Text('Color Taps')),
      body: Consumer<ColorCounters>(
        builder: (context, colorCounters, child) {
          return Column(
            children: [
              ColorTap(
                type: CardType.red,
                tapCount: colorCounters.redTapCount,
                onTap: colorCounters.incrementRed,
              ),
              ColorTap(
                type: CardType.blue,
                tapCount: colorCounters.blueTapCount,
                onTap: colorCounters.incrementBlue,
              ),
            ],
          );
        },
      ),
    );
  }
}
