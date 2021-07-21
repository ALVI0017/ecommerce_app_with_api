// import 'package:flutter/material.dart';
// import 'package:ecommerce_app/ui/components/product_card.dart';
// import 'package:ecommerce_app/data/models/Product.dart';
//
// import '../../../size_config.dart';
// import 'section_title.dart';
//
// class ProductItem extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding:
//               EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
//           child: SectionTitle(title: "New Arrivals", press: () {}),
//         ),
//         SizedBox(height: getProportionateScreenWidth(20)),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             children: [
//               ...List.generate(
//                 demoProducts.length,
//                 (index) {
//                   if (demoProducts[index].isPopular)
//                     return ProductCard(product: demoProducts[index]);
//
//                   return SizedBox
//                       .shrink(); // here by default width and height is 0
//                 },
//               ),
//               SizedBox(width: getProportionateScreenWidth(20)),
//             ],
//           ),
//         )
//       ],
//     );
//   }
// }