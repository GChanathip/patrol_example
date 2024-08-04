// ignore_for_file: unused_local_variable


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  patrolTest(
    'Example Syntax',
    (PatrolIntegrationTester $) async {
      app.main();

      /// find widget

      final button1 = $('Search'); // Find by Text

      final button2 = $(Key('homepage_search_button')); // Find by Key

      final button3 = $(ElevatedButton); // Find by Class

      final textField = $(TextField); // Find by Class

      final itemCards = $(ListTile); // Find by Class

      final itemCardAtIndex = $(ListTile).at(0); // itemCards at index 0

      final videoEditing = itemCards.$('Video Editting'); // deep finding

      /// interact with widget

      await button1.tap(); // Tap button

      await textField.enterText("Hello World"); // enter text to textfield

      await itemCards.scrollTo(); // Scroll to first item.

      await videoEditing.scrollTo(); // Scroll to Video Editting Text.

      /// Chain calling

      await $(TextField).enterText('Hello World'); // find widget and enter text.

      await $(ListTile).$('Video Editting').scrollTo().tap(); // scroll to Video Editting text and tap.

      await $("ไปต่อ").waitUntilVisible();

      /// Assertion
      
      expect($(ElevatedButton), findsOneWidget);

      expect($(ListTile).$(Text).text, 'Web Developement');

      expect($(ListTile).$(Text).at(1).text, startsWith('Build a responsive'));
    
    },
  );
}
