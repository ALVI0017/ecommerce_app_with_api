// import 'package:flutter/material.dart';
// import 'package:ecommerce_app/ui/components/trending_seller_card.dart';
// import 'package:ecommerce_app/data/models/Product.dart';
//
// import '../../../size_config.dart';
// import 'section_title.dart';
//
// class NewArrivals extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white12,
//       height: 195,
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(3),
//               topRight: Radius.circular(3),
//               bottomLeft: Radius.circular(3),
//               bottomRight: Radius.circular(3)),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: Offset(0, 3), // changes position of shadow
//             ),
//           ],
//         ),
//         child: Column(
//           children: [
//             Container(
//               margin:
//                   EdgeInsets.only(left: 0.0, top: 0, right: 0.0, bottom: 2.0),
//               child: Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: getProportionateScreenWidth(10)),
//                 child: SectionTitle(title: "New Arrivals", press: () {}),
//               ),
//             ),
//             SizedBox(height: getProportionateScreenWidth(5)),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   ...List.generate(
//                     demoProducts.length,
//                     (index) {
//                       if (demoProducts[index].isPopular)
//                         return ProductCard(product: demoProducts[index]);
//
//                       return SizedBox
//                           .shrink(); // here by default width and height is 0
//                     },
//                   ),
//                   SizedBox(width: getProportionateScreenWidth(10)),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
