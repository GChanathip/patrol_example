import 'package:flutter/material.dart';
import 'package:patrol_example/entity.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  static PageRoute<void> page(Product product) {
    return MaterialPageRoute(
      builder: (context) => ProductDetail(product: product),
      settings: RouteSettings(
        name: routeName,
      ),
    );
  }

  static String routeName = '/product_detail';

  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Product Detail'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              product.imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Text(product.jobName, style: Theme.of(context).textTheme.titleLarge),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text(
                    'user: ${product.sellerName}',
                    key: const Key('product_detail_freelance_name'),
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(width: 16),
                  Icon(Icons.star, color: Colors.yellow.shade700),
                  Text(
                    product.rating.toString(),
                    key: const Key('product_detail_rating'),
                    style: Theme.of(context).textTheme.labelMedium,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'price: \$${product.price}',
                key: const Key('product_detail_price'),
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(product.description, style: Theme.of(context).textTheme.bodyMedium),
            ),
          ],
        ),
      ),
    );
  }
}
