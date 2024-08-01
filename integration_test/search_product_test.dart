import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  patrolTest(
    'search product SEO and verify response data.',
    ($) async {
      app.main();
    },
  );
}
