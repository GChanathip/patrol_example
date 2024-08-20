import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  patrolTest(
    'Allow and deny permission',
    ($) async {
      app.main();
    },
  );
}
