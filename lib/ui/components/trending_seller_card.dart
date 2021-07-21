import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/models/Test_Product.dart';

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
                    child: CachedNetworkImage(
                      imageUrl: t_seller.sellerProfilePhoto,
                      fit: BoxFit.fill,
                      placeholder: (context, url) =>
                          Center(child: CircularProgressIndicator()),
                      errorWidget: (context, url, error) =>
                      new Icon(Icons.error),
                    ),
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
