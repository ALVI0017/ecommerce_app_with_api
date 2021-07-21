import 'package:ecommerce_app/data/models/Products.dart';
import 'package:ecommerce_app/ui/components/products_Card.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'section_title.dart';

Widget build_product(List<ProductParse> product, int x) {
  return Container(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 0.0, top: 0, right: 0.0, bottom: 2.0),
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(10)),
            child: SectionTitle(title: "Products", press: () {}),
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(5)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ...List.generate(
                x,
                (index) {
                  return product_card(product[index]);
                },
              ),
              SizedBox(width: getProportionateScreenWidth(10)),
            ],
          ),
        )
      ],
    ),
  );
}
