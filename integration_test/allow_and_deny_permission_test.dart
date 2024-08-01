import 'package:patrol/patrol.dart';
import 'package:patrol_example/main.dart' as app;

void main() {
  patrolTest(
    'Allow and deny permission',
    ($) async {
      app.main();
      await $('Native').tap();
      await $('Request Camera Permission').tap();
      final isCameraPermissionVisible = await $.native2.isPermissionDialogVisible();
      if (isCameraPermissionVisible) {
        await $.native2.grantPermissionWhenInUse();
      }
      await $('Request Notification Permission').tap();
      final isNotificationPermissionVisible = await $.native2.isPermissionDialogVisible();
      if (isNotificationPermissionVisible) {
        await $.native2.denyPermission();
      }
    },
  );
}
