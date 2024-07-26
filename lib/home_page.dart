import 'dart:io';

import 'package:flutter/material.dart';
import 'package:patrol_example/entity.dart';
import 'package:patrol_example/freelance_listing_page.dart';
import 'package:patrol_example/interact_with_native.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final TextEditingController textEditingController;

  late List<Product> searchResult;
  int pageIndex = 0;
  bool isAndroid = Platform.isAndroid;

  @override
  void initState() {
    textEditingController = TextEditingController();
    searchResult = Product.mockData;
    super.initState;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: IndexedStack(
        index: pageIndex,
        children: const [
          FreelanceListPage(),
          InteractWithNativePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Find Freelancer',
          ),
          BottomNavigationBarItem(
            icon: Icon(isAndroid ? Icons.android : Icons.settings),
            label: 'Native',
          ),
        ],
      ),
    );
  }
}
