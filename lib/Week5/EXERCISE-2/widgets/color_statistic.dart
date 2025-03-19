import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Week5/EXERCISE-2/model/color_counters.dart';

class StatisticsScreen extends StatelessWidget {
  final ColorCounters colorCounters;
  const StatisticsScreen({super.key, required this.colorCounters,});

  @override
  Widget build(BuildContext context) {
    print("StatisticsScreen rebuilt");
    return Scaffold(
      appBar: AppBar(title: Text('Statistics')),
      body: Consumer<ColorCounters>(
        builder: (context, colorCounters, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Red Taps: ${colorCounters.redTapCount}', style: TextStyle(fontSize: 24)),
                Text('Blue Taps: ${colorCounters.blueTapCount}', style: TextStyle(fontSize: 24)),
              ],
            ),
          );
        },
      ),
    );
  }
}
