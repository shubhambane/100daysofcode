import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  'https://media.licdn.com/media/AAYQAQSOAAgAAQAAAAAAAB-zrMZEDXI2T62PSuT6kpB6qg.png',
                ),
              ),
              title: const Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle: const Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Symbols.notifications),
                onPressed: () {},
              ),
            ),
            _buildContainer(),
            Container(
              clipBehavior: Clip.hardEdge,
              margin: const EdgeInsets.symmetric(vertical: 16),
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
              height: 140,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: const Color(0XFF008B28),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: RichText(
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'Get discount prices up to 85%',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          TextSpan(
                            text:
                                '\n\nClaim voucher every week and get free shipping',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/media/cover.png',
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Popular Plants',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: Text(
                'See All',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildProductGrid(),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0XFFF6F6F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        title: const Text(
          'Welcome back!',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: const Text(
          'Welcome back!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: IconButton(
          icon: const Icon(
            Symbols.add_circle,
            size: 26,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  Widget _buildProductGrid() {
    // Sample product data
    final List<Map<String, dynamic>> products = [
      {
        'product_image': 'image_url1',
        'product_name': 'Product 1',
        'product_price': '\$20.00',
      },
      {
        'product_image': 'image_url2',
        'product_name': 'Product 2',
        'product_price': '\$25.00',
      },
      {
        'product_image': 'image_url3',
        'product_name': 'Product 3',
        'product_price': '\$30.00',
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductItem(
          productImage: products[index]['product_image'],
          productName: products[index]['product_name'],
          productPrice: products[index]['product_price'],
        );
      },
    );
  }
}

class ProductItem extends StatelessWidget {
  final String productImage;
  final String productName;
  final String productPrice;

  const ProductItem({
    required this.productImage,
    required this.productName,
    required this.productPrice,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0XFFF6F6F6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Image.network(
            productImage,
            height: 120,
            fit: BoxFit.cover,
            // https://unsplash.com/photos/green-plant-on-brown-wooden-vase-Ebwp2-6BG8E
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  productPrice,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
