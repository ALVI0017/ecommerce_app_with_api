import 'package:flutter/material.dart';
import 'package:ecommerce_app/ui/size_config.dart';

const kPrimaryColor = Color(0xFF519E8A);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [Color(0xFF73D5D4), Color(0xFF11AAD2)],
);
const kSecondaryColor = Color(0xFF131313);
const kTextColor = Color(0xFF171717);
const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);
