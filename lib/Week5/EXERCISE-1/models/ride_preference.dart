class RidePreference {
   String name;
   
   static RidePreference defaultPreference = RidePreference(name: '');
 
   RidePreference({required this.name});
 
   @override 
   String toString() => 'RidePreference: $name';
 }

//  class NamePreference {
//   String name1;

//   static NamePreference defaultNamePreference = NamePreference(name1: '');

//   NamePreference({required this.name1});

//   @override
//    String toString() => 'NamePreference: $name1';
//   }
 