import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_app/ui/models/Product.dart';

import '../constants.dart';
import '../size_config.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.width = 140,
    this.aspectRetio = 1.02,
    @required this.product,
  }) : super(key: key);

  final double width, aspectRetio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
      child: SizedBox(
        height: 149,
        width: getProportionateScreenWidth(width / 1.4),
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
                      tag: product.id.toString(),
                      child: Container(child: Image.asset(product.images[0])),
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  product.title,
                  style: TextStyle(color: Colors.black),
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\BDT ${product.price}",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(10),
                        fontWeight: FontWeight.w600,
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
