// project coming soon


// import 'package:flutter/material.dart';
// import '../../models/product.dart';
// import '../../widgets/product_card.dart';
// import '../product_detail/product_detail_page.dart';

// class ProductCatelogue extends StatelessWidget {
//   final List<Product> products;
//   const ProductCatelogue({
//     super.key,
//     required this.products,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         crossAxisSpacing: 8.0,
//         mainAxisSpacing: 8.0,
//       ),
//       itemCount: products.length,
//       itemBuilder: (context, index) {
//         return ProductCard(
//           product: products[index],
//           onAddToCart: (product) => addToCart(product),
//           onViewDetails: (product) => viewDetails(context, product),
//         );
//       },
//     );
//   }

//   void addToCart(Product product) {
//     // Implement add to cart functionality
//   }

//   void viewDetails(BuildContext context, Product product) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => ProductDetailPage(product: product),
//       ),
//     );
//     // Navigator.pushNamed(context, '/product-detail-page', arguments: product);
//   }
// }
