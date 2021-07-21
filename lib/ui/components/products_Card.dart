import 'dart:convert';
import 'dart:js';

import 'package:ecommerce_app/data/models/Products.dart';
import 'package:ecommerce_app/data/models/trending_products.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/models/Test_Product.dart';

import '../constants.dart';
import '../size_config.dart';

Widget product_card(ProductParse product) {
  return Padding(
    padding: EdgeInsets.all(getProportionateScreenWidth(5)),
    child: SizedBox(
      height: 350,
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
                aspectRatio: 1.2,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(2)),
                  child: Hero(
                    tag: product.slNo,
                    child: Container(
                        child: Image.network(product.storyImage,
                            fit: BoxFit.fitWidth)),
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Text(
                product.companyName.toString(),
                style: TextStyle(color: Colors.black),
                maxLines: 1,
              ),
              Text(
                '৳' + product.unitPrice.toString(),
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
