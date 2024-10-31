import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol_example/main.dart';

void main() {
  testWidgets(
    'search product SEO and verify response data',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      // Search for 'seo'
      await tester.enterText(find.byKey(const Key('homepage_search_field')), 'seo');

      await tester.tap(find.byKey(const Key('homepage_search_button')));
      await tester.pumpAndSettle();

      expect(find.text('SEO Optimization'), findsOneWidget);
      expect(find.byType(ListTile), findsOneWidget);

      // Tap on search result
      await tester.tap(find.byType(ListTile));
      await tester.pumpAndSettle();

      expect(find.byType(Image), findsOneWidget);
      expect(
        (find.byKey(const Key('product_detail_freelance_name')).evaluate().single.widget as Text).data,
        'user: Emma Davis',
      );
      expect(
        find.byKey(const Key('product_detail_price')).evaluate().single.widget,
        isA<Text>().having((t) => t.data, 'text', 'price: \$300.0'),
      );
      expect(
        find.byKey(const Key('product_detail_rating')).evaluate().single.widget,
        isA<Text>().having((t) => t.data, 'text', '4.9'),
      );

      // Go back and search for Animation Services
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();

      await tester.enterText(find.byType(TextField), '');
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // Scroll until finding the text and tap it
      await tester.scrollUntilVisible(
        find.text('Animation Services'),
        500.0,
        scrollable: find
            .descendant(
              of: find.byType(ListView),
              matching: find.byType(Scrollable),
            )
            .first,
      );
      await tester.tap(find.text('Animation Services'));
      await tester.pumpAndSettle();

      expect(
        find.byKey(const Key('product_detail_freelance_name')).evaluate().single.widget,
        isA<Text>().having((t) => t.data, 'text', 'user: Amelia Harris'),
      );
    },
  );
}
