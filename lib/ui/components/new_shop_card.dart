import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce_app/data/models/new_shops.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../size_config.dart';

Widget n_shop_card(NewShopParse n_shops) {
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
                aspectRatio: 1.2,
                child: Container(
                  padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                  child: Hero(
                    tag: n_shops.slNo,
                    child: CachedNetworkImage(
                      imageUrl: n_shops.sellerProfilePhoto,
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
                n_shops.ezShopName.toString(),
                style: TextStyle(color: Colors.black),
                maxLines: 1,
              ),
              Text(
                n_shops.aboutCompany.toString(),
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
