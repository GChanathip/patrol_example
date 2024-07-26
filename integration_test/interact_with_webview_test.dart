import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  patrolTest(
    'Interact with WebView',
    ($) async {
      app.main();
      await $('Native').tap();
      await $('Open Web View').tap();
      await $.native2
          .tap(NativeSelector(android: AndroidSelector(text: 'เข้าสู่ระบบ'), ios: IOSSelector(title: "เข้าสู่ระบบ")));
      await $.native.enterTextByIndex('your_email', index: 0);
      await $.native2.tap(NativeSelector(android: AndroidSelector(text: 'ถัดไป'), ios: IOSSelector(title: "ถัดไป")));
      await $.native.enterTextByIndex('your_password', index: 0);
      await $.native2
          .tap(NativeSelector(android: AndroidSelector(text: 'เข้าสู่ระบบ'), ios: IOSSelector(title: "เข้าสู่ระบบ")));
    },
  );
}
