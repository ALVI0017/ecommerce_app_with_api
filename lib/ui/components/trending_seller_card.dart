import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/models/Product.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../constants.dart';
import '../size_config.dart';
import 'package:ecommerce_app/data/models/trending_sellers.dart';

// class ProductCard extends StatelessWidget {
//   const ProductCard({
//     Key key,
//     this.width = 140,
//     this.aspectRetio = 1.02,
//     // @required this.product,
//     @required this.t_seller,
//   }) : super(key: key);
//
//   final double width, aspectRetio;
//   // final Product product;
//   final TrendingSellerparse t_seller;

Widget t_seller_card(TrendingSellerparse t_seller) {
  Fluttertoast.showToast(
      msg: "alvi" + t_seller.toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
  return Padding(
    padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
    child: SizedBox(
      height: 149,
      width: getProportionateScreenWidth(140 / 1.4),
      child: Container(
        padding: EdgeInsets.all(getProportionateScreenWidth(5)),
        decoration: BoxDecoration(
          color: kSecondaryColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1.02,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  child: Hero(
                    tag: t_seller.slNo,
                    child: Container(
                        height: 150,
                        width: 100,
                        child: Image.network(t_seller.sellerProfilePhoto)),
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                t_seller.sellerName,
                style: TextStyle(color: Colors.black),
                maxLines: 1,
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "\BDT ${product.price}",
              //       style: TextStyle(
              //         fontSize: getProportionateScreenWidth(10),
              //         fontWeight: FontWeight.w600,
              //         color: kPrimaryColor,
              //       ),
              //     ),
              //   ],
              // )
            ],
          ),
        ),
      ),
    ),
  );
}
// }
