import 'logger/console_logger.dart';
import 'models/ride_preference.dart';
import 'services/ride_preference_service.dart';

void main() {
  RidePreferencesService ridePreferencesService = RidePreferencesService();
  ConsoleLogger consoleLogger = ConsoleLogger();
 
  ridePreferencesService.addListener(consoleLogger);
 
  ridePreferencesService.setPreference(RidePreference.defaultPreference);
  
 }