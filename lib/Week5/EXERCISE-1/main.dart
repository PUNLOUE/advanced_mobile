
import 'logger/console_logger.dart';
import 'models/ride_preference.dart';
import 'services/ride_preference_service.dart';

void main() {
  final service = RidePreferencesService();
  final logger = ConsoleLogger();
 
  service.addListener(logger); 
 
  service.setPreference(RidePreference(name: 'Punloue')); 
  service.setPreference(RidePreference(name: 'Enjoy the ride!')); 
 
}