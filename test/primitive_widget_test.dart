import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:patrol_example/main.dart';

void main() {
  testWidgets(
    'search product SEO and verify response data',
    (WidgetTester tester) async {
      // 1. Load MyApp
      await tester.pumpWidget(const MyApp());
      await tester.pumpAndSettle();

      // 2. Fill “SEO” in TextField
      await tester.enterText(find.byKey(const Key('homepage_search_field')), 'seo');
      // 3. Tap on Search Button
      await tester.tap(find.byKey(const Key('homepage_search_button')));
      await tester.pumpAndSettle();
      // 3.1 Should see result only 1 item.
      expect(find.byType(ListTile), findsOneWidget);

      // 4. Tap on Product Card
      await tester.tap(find.byType(ListTile));
      await tester.pumpAndSettle();

      // 4.1 Should see “Product Detail” Text
      expect(find.text('Product Detail'), findsOneWidget);
      // 4.2 Should see 1 image.
      expect(find.byType(Image), findsOneWidget);
      // 4.3 Should see “user: Emma Davis” Text
      expect(
        (find.byKey(const Key('product_detail_freelance_name')).evaluate().single.widget as Text).data,
        'user: Emma Davis',
      );

      // 5. Tap on BackButton.
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();

      // 6. Clear  TextField
      await tester.enterText(find.byType(TextField), '');
      // 7. Tap on Search Button.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pumpAndSettle();

      // 8. Scroll to “Animation Service” and Tap.
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

      // 8.1 Should see “user: Amelia Harris”
      expect(
        find.byKey(const Key('product_detail_freelance_name')).evaluate().single.widget,
        isA<Text>().having((t) => t.data, 'text', 'user: Amelia Harris'),
      );
    },
  );
}
