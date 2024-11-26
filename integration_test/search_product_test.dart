import 'package:flutter/material.dart';
import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  patrolTest(
    'search product SEO and verify response data.',
    ($) async {
      app.main();

      await $(const Key('homepage_search_field')).enterText('seo');
      await $(const Key('homepage_search_button')).tap();

      await $(ListTile).tap();

      await $(BackButton).tap();
      await $(TextField).enterText('');
      await $(ElevatedButton).tap();

      await $(const Key('homepage_search_field')).enterText('logo');
      await $(const Key('homepage_search_button')).tap();
    },
  );
}
