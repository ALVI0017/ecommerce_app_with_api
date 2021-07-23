import 'package:ecommerce_app/data/models/Products.dart';
import 'package:ecommerce_app/ui/components/products_Card.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'section_title.dart';

Widget build_product(List<ProductParse> product, int x, int start, int end) {
  return Container(
    child: Column(
      children: [
        SizedBox(height: getProportionateScreenWidth(4)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ...List.generate(
                x,
                (index) {
                  return product_card(product[index]);
                },
              ).getRange(start, end),
              SizedBox(width: getProportionateScreenWidth(10)),
            ],
          ),
        )
      ],
    ),
  );
}
