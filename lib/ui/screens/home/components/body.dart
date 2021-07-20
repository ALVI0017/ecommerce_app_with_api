import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'categories.dart';
import 'home_header.dart';
import 'trending_products.dart';
import 'special_offers.dart';
import 'trending_sellers.dart';
import 'new_arrival.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(10)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            TrendingSellers(),
            SizedBox(height: getProportionateScreenWidth(10)),
            TrendingProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            NewArrivals(),
            SizedBox(height: getProportionateScreenWidth(30)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
