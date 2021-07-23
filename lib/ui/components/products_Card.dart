import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/data/models/Products.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

Widget product_card(ProductParse product) {
  return Padding(
    padding: EdgeInsets.all(getProportionateScreenWidth(5)),
    child: SizedBox(
      height: 400,
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
                      child: CachedNetworkImage(
                        imageUrl: product.storyImage,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            new Icon(Icons.error),
                      ),
                    ),
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
            ],
          ),
        ),
      ),
    ),
  );
}
// }
