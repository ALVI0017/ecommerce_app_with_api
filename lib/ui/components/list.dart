import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ecommerce_app/data/models/trending_sellers.dart';
import 'package:fluttertoast/fluttertoast.dart';

Widget buildHintsList(List<TrendingSellerparse> t_seller) {
  Fluttertoast.showToast(
      msg: t_seller.toString(),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0);
  return SingleChildScrollView(
    scrollDirection: Axis.vertical,
    child: Container(
      child: new ListView.builder(
          itemCount: t_seller.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 90,
                        width: 100,
                        child:
                            Image.network(t_seller[index].sellerProfilePhoto)),
                    // SizedBox(height: 30),
                    Text(t_seller[index].sellerName),
                  ],
                ),
              ),
            );
          }),
    ),
  );
}
