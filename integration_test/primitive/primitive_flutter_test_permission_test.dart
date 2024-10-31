import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  testWidgets(
    'Allow and deny permission',
    (WidgetTester tester) async {
      // Initialize app
      app.main();
      await tester.pumpAndSettle();

      // Tap on Native button
      await tester.tap(find.text('Native'));
      await tester.pumpAndSettle();

      // Tap on Camera Permission button
      await tester.tap(find.text('Request Camera Permission'));
      await tester.pumpAndSettle();

      await tester.tap(find.text('Request Notification Permission'));
      await tester.pumpAndSettle();
    },
  );
}
