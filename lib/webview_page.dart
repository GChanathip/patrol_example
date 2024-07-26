
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InAppWebView extends StatelessWidget {
  const InAppWebView({super.key});

  static PageRoute<void> page() {
    return MaterialPageRoute(
      builder: (context) => InAppWebView(),
      settings: const RouteSettings(
        name: '/in-app-web-view',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
