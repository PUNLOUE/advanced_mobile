import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Week5/EXERCISE-2/model/color_counters.dart';
import '/Week5/EXERCISE-2/widgets/color_button.dart';
import '/Week5/EXERCISE-2/widgets/color_statistic.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0; // To track the current page

  @override
  Widget build(BuildContext context) {
    print("Home rebuilt");
    return Scaffold(
      body: _currentIndex == 0
          ? Consumer<ColorCounters>(
              builder: (context, colorCounters, child) {
                return ColorTapsScreen(
                  redTapCount: colorCounters.redTapCount,
                  blueTapCount: colorCounters.blueTapCount,
                  onRedTap: () => colorCounters.incrementRed(),
                  onBlueTap: () => colorCounters.incrementBlue(),
                );
              },
            )
          : Consumer<ColorCounters>(
              builder: (context, colorCounters, child) {
                return StatisticsScreen(colorCounters: colorCounters);
              },
            ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Change the screen on tap
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.tap_and_play),
            label: 'Taps',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Statistics',
          ),
        ],
      ),
    );
  }
}
