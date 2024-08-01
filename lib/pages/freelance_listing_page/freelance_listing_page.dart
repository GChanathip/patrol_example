import 'package:flutter/material.dart';
import 'package:patrol_example/entity.dart';
import 'package:patrol_example/pages/freelance_detail_page/product_detail_page.dart';

class FreelanceListPage extends StatefulWidget {
  const FreelanceListPage({super.key});

  @override
  State<FreelanceListPage> createState() => _FreelanceListPageState();
}

class _FreelanceListPageState extends State<FreelanceListPage> {
  late final TextEditingController textEditingController;
  late List<Product> searchResult;

  @override
  void initState() {
    textEditingController = TextEditingController();
    searchResult = Product.mockData;
    super.initState;
  }

  void searchProduct() {
    FocusScope.of(context).unfocus();
    if (textEditingController.text.isEmpty) {
      setState(() {
        searchResult = Product.mockData;
      });
    } else {
      setState(() {
        searchResult = Product.mockData.where((item) {
          final keyword = textEditingController.text.toLowerCase();
          final result = item.jobName.toLowerCase().contains(keyword);

          return result;
        }).toList();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Freelance Marketplace'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: TextField(
                    key: const Key('homepage_search_field'),
                    controller: textEditingController,
                    textInputAction: TextInputAction.done,
                    onSubmitted: (_) => searchProduct(),
                    // decoration: InputDecoration(),
                  ),
                ),
                ElevatedButton.icon(
                  key: const Key('homepage_search_button'),
                  onPressed: searchProduct,
                  label: const Icon(Icons.search),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: searchResult.length,
              itemBuilder: (context, index) {
                final item = searchResult[index];
                return ListTile(
                  onTap: () => Navigator.of(context).push(ProductDetail.page(item)),
                  leading: Image.asset(item.imagePath),
                  title: Text(item.jobName),
                  subtitle: Text(item.description, maxLines: 1, overflow: TextOverflow.ellipsis),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(height: 8);
              },
            ),
          ),
        ],
      ),
    );
  }
}
