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
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 50),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1698668768733-7615fbb4ba48?auto=format&fit=crop&q=80&w=1964&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
                'Shubham Bane',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                icon: Icon(
                  Symbols.notifications,
                  color: Colors.green.shade900,
                ),
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
          'Your Balance',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        subtitle: const Text(
          '\$156,345.37',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
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
        'product_image': 'assets/media/plant1.png',
        'product_name': 'Exelina',
        'product_price': '\$33.33',
      },
      {
        'product_image': 'assets/media/plant2.png',
        'product_name': 'Carolin',
        'product_price': '\$41.15',
      },
      {
        'product_image': 'assets/media/plant3.png',
        'product_name': 'Product 3',
        'product_price': '\$40.00',
      },
      {
        'product_image': 'assets/media/plant4.png',
        'product_name': 'Product 4',
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
        childAspectRatio: 0.8,
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
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed('/product');
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0XFFF6F6F6),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              productImage,
              height: 165,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    productName,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    productPrice,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
