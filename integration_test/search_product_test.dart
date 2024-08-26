import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  patrolTest(
    'search product SEO and verify response data.',
    ($) async {
      app.main();

      await $(const Key('homepage_search_field')).enterText('seo');
      await $(const Key('homepage_search_button')).tap();
      expect($('SEO Optimization'), findsOneWidget);
      expect($(ListTile), findsOneWidget);

      await $(ListTile).tap();
      expect($(Image), findsOneWidget);
      expect($(const Key('product_detail_freelance_name')).text, 'user: Emma Davis');
      expect($(const Key('product_detail_price')).text, 'price: \$300.0');
      expect($(const Key('product_detail_rating')).text, '4.9');

      await $(BackButton).tap();
      await $(TextField).enterText('');
      await $(ElevatedButton).tap();
      await $('Animation Services').scrollTo(view: $(ListView)).tap();

      expect($(const Key('product_detail_freelance_name')).text, 'user: Amelia Harris');
    },
  );
}
