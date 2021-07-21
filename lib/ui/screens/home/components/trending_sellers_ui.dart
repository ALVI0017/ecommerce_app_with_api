import 'package:ecommerce_app/data/models/trending_sellers.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/ui/components/product_card.dart';
import 'package:ecommerce_app/data/models/Product.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../size_config.dart';
import 'section_title.dart';

Widget build_tseller(List<TrendingSellerparse> t_seller) {
  return Container(
    color: Colors.white12,
    height: 195,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(3),
            topRight: Radius.circular(3),
            bottomLeft: Radius.circular(3),
            bottomRight: Radius.circular(3)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 0.0, top: 0, right: 0.0, bottom: 2.0),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(10)),
              child: SectionTitle(title: "Trending Sellers", press: () {}),
            ),
          ),
          SizedBox(height: getProportionateScreenWidth(5)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  t_seller.length,
                  (index) {
                    return product_card(t_seller[index]);

                    // return SizedBox
                    //     .shrink(); // here by default width and height is 0
                  },
                ),
                SizedBox(width: getProportionateScreenWidth(10)),
              ],
            ),
          )
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       ...List.generate(
          //         demoProducts.length,
          //         (index) {
          //           product_card(demoProducts[index]);
          //
          //           return SizedBox
          //               .shrink(); // here by default width and height is 0
          //         },
          //       ),
          //       SizedBox(width: getProportionateScreenWidth(10)),
          //     ],
          //   ),
          // )
        ],
      ),
    ),
  );
}
