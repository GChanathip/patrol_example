import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

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
            title: Text('Open Web View'),
            onTap: () {
              ChromeSafariBrowser().open(url: WebUri("https://fastwork.co"));
            },
          ),
          ListTile(
            title: Text('Open Image Picker'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
