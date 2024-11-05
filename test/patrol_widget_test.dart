import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart';

void main() {
  patrolWidgetTest(
    'search product SEO and verify response data.',
    ($) async {
      // 1. Load MyApp
      await $.pumpWidgetAndSettle(const MyApp());

      // 2. Fill “SEO” in TextField
      await $(const Key('homepage_search_field')).enterText('seo');
      // 3. Tap on Search Button
      await $(const Key('homepage_search_button')).tap();
      // 3.1 Should see result only 1 item.
      expect($(ListTile), findsOneWidget);

      // 4. Tap on Product Card
      await $(ListTile).tap();
      // 4.1 Should see “Product Detail” Text
      expect($('Product Detail'), findsOneWidget);
      // 4.2 Should see 1 image.
      expect($(Image), findsOneWidget);
      // 4.3 Should see “user: Emma Davis” Text
      expect($(const Key('product_detail_freelance_name')).text, 'user: Emma Davis');

      // 5. Tap on BackButton.
      await $(BackButton).tap();
      // 6. Clear  TextField
      await $(TextField).enterText('');
      // 7. Tap on Search Button.
      await $(ElevatedButton).tap();
      // 8. Scroll to “Animation Service” and Tap.
      await $('Animation Services').scrollTo(view: $(ListView)).tap();
      // 8.1 Should see “user: Amelia Harris”
      expect($(const Key('product_detail_freelance_name')).text, 'user: Amelia Harris');
    },
  );
}
