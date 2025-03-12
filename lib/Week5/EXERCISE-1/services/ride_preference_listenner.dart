import '../models/ride_preference.dart';

abstract class RidePreferencesListener {
  void onPreferenceChange(RidePreference changedPreference);
}

