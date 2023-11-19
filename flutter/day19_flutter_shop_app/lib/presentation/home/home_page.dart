import 'package:day19_flutter_shop_app/theme/colors.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../../widgets/product_card.dart';
import '../product_detail/product_detail_page.dart';

class HomePage extends StatefulWidget {
  final List<Product> products;

  const HomePage({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            child: const Icon(
              FeatherIcons.grid,
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            decoration: BoxDecoration(
              color: kDefaultPurple,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Search... ',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(width: 4),
                Icon(
                  FeatherIcons.search,
                  size: 14,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Colors.grey.shade200,
                  image: const DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1542992015-4a0b729b1385?q=80&w=1489&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text("Let's Shop"),
                subtitle: const Text("Explore our popular collection"),
                trailing: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: kDefaultPurple,
                  ),
                  child: const Icon(
                    FeatherIcons.sliders,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 1 / 1.4,
                ),
                itemCount: widget.products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    product: widget.products[index],
                    onAddToCart: (product) => addToCart(product),
                    onViewDetails: (product) => viewDetails(context, product),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void addToCart(Product product) {}

  void viewDetails(BuildContext context, Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProductDetailPage(product: product),
      ),
    );
    // Navigator.pushNamed(context, '/product-detail-page', arguments: product);
  }
}
