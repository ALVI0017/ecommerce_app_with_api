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
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: CachedNetworkImage(
                        imageUrl: product.companyLogo,
                        fit: BoxFit.cover,
                        height: 40,
                        width: 40,
                        placeholder: (context, url) =>
                            Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            new Icon(Icons.error),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          // WidgetSpan(
                          //   child: Icon(Icons.add),
                          // ),
                          TextSpan(
                              text: product.companyName.toString(),
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(
                            text: '\n' + product.friendlyTimeDiff.toString(),
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text.rich(
                  TextSpan(
                    children: [
                      // WidgetSpan(
                      //   child: Icon(Icons.add),
                      // ),
                      TextSpan(
                        text: product.story.toString(),
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              AspectRatio(
                aspectRatio: 1.5,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.card_giftcard, size: 15),
                          ),
                          TextSpan(
                              text: 'BDT ' + product.unitPrice.toString(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.credit_card, size: 15),
                          ),
                          TextSpan(
                              text: 'Online Payment ',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            child: Icon(Icons.shopping_cart_outlined, size: 15),
                          ),
                          TextSpan(
                              text: product.orderQty.toString() + ' Order(s)',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
// }
