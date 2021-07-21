import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/data/models/trending_products.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/models/Test_Product.dart';

import '../constants.dart';
import '../size_config.dart';

Widget t_product_card(TrendingProductparse t_product) {
  return Padding(
    padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
    child: SizedBox(
      height: 152,
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
                aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  child: Hero(
                    tag: t_product.slNo,
                    child:
                    CachedNetworkImage(
                      imageUrl: t_product.sellerProfilePhoto,
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
                t_product.productName.toString(),
                style: TextStyle(color: Colors.black),
                maxLines: 1,
              ),
              Text(
                '৳' + t_product.unitPrice.toString(),
                style: TextStyle(color: Colors.deepOrange, fontSize: 12),
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
