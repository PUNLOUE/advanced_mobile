import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/Week5/EXERCISE-2/model/color_counters.dart';
import '/Week5/EXERCISE-2/screen/home_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ColorCounters(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: HomeScreen()),
    );
  }
}
