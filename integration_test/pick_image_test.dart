import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  patrolTest(
    'Allow Photo permission and open Image Picker ',
    ($) async {
      app.main();
      await Future.delayed(Duration(seconds: 5));
    },
  );
}
