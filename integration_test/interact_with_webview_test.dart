import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  patrolTest(
    'Interact with WebView',
    ($) async {
      app.main();
      await $('Native').tap();
      await $('Open Web View').tap();
      await $.native2.tap(NativeSelector(
          android: AndroidSelector(text: 'ค้นหาหมวดหมู่งาน'), ios: IOSSelector(title: 'ค้นหาหมวดหมู่งาน')));
      await $.native2
          .tap(NativeSelector(android: AndroidSelector(text: 'กราฟิกดีไซน์'), ios: IOSSelector(title: 'กราฟิกดีไซน์')));
    },
  );
}
