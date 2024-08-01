import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  patrolTest(
    'Interact with WebView',
    ($) async {
      app.main();
    },
  );
}
