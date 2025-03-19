import 'package:flutter/material.dart';

class ColorCounters with ChangeNotifier {
  int _redTapCount = 0;
  int _blueTapCount = 0;

  int get redTapCount => _redTapCount;
  int get blueTapCount => _blueTapCount;

  void incrementRed() {
    _redTapCount++;
    notifyListeners();  // Notify listeners when the red tap count changes
  }

  void incrementBlue() {
    _blueTapCount++;
    notifyListeners();  // Notify listeners when the blue tap count changes
  }
}
