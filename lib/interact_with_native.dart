import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:permission_handler/permission_handler.dart';

class InteractWithNativePage extends StatelessWidget {
  const InteractWithNativePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Interact With Native'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Open Web View'),
            onTap: () {
              ChromeSafariBrowser().open(url: WebUri("https://jobboard.fastwork.co/"));
            },
          ),
          ListTile(
            title: const Text('Request Camera Permission'),
            onTap: () {
              Permission.camera.request();
            },
          ),
          ListTile(
            title: const Text('Request Notification Permission'),
            onTap: () {
              Permission.notification.request();
            },
          ),
        ],
      ),
    );
  }
}
