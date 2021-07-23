// To parse this JSON data, do
//
//     final newShopParse = newShopParseFromJson(jsonString);

import 'dart:convert';

List<List<NewShopParse>> newShopParseFromJson(String str) =>
    List<List<NewShopParse>>.from(json.decode(str).map((x) =>
        List<NewShopParse>.from(x.map((x) => NewShopParse.fromJson(x)))));

// String newShopParseToJson(List<List<NewShopParse>> data) =>
//     json.encode(List<dynamic>.from(
//         data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class NewShopParse {
  NewShopParse({
    this.slNo,
    this.sellerName,
    this.sellerProfilePhoto,
    this.sellerItemPhoto,
    this.ezShopName,
    this.defaultPushScore,
    this.aboutCompany,
    this.allowCod,
    this.division,
    this.subDivision,
    this.city,
    this.state,
    this.zipcode,
    this.country,
    this.currencyCode,
    this.orderQty,
    this.orderAmount,
    this.salesQty,
    this.salesAmount,
    this.highestDiscountPercent,
    this.lastAddToCart,
    this.lastAddToCartThatSold,
  });

  String slNo;
  String sellerName;
  String sellerProfilePhoto;
  String sellerItemPhoto;
  String ezShopName;
  double defaultPushScore;
  String aboutCompany;
  int allowCod;
  String division;
  String subDivision;
  String city;
  String state;
  String zipcode;
  String country;
  String currencyCode;
  int orderQty;
  int orderAmount;
  int salesQty;
  int salesAmount;
  int highestDiscountPercent;
  DateTime lastAddToCart;
  DateTime lastAddToCartThatSold;

  factory NewShopParse.fromJson(Map<String, dynamic> json) => NewShopParse(
        slNo: json["slNo"],
        sellerName: json["sellerName"],
        sellerProfilePhoto: json["sellerProfilePhoto"],
        sellerItemPhoto: json["sellerItemPhoto"],
        ezShopName: json["ezShopName"],
        defaultPushScore: json["defaultPushScore"].toDouble(),
        aboutCompany: json["aboutCompany"],
        allowCod: json["allowCOD"],
        division: json["division"],
        subDivision: json["subDivision"],
        city: json["city"],
        state: json["state"],
        zipcode: json["zipcode"],
        country: json["country"],
        currencyCode: json["currencyCode"],
        orderQty: json["orderQty"],
        orderAmount: json["orderAmount"],
        salesQty: json["salesQty"],
        salesAmount: json["salesAmount"],
        highestDiscountPercent: json["highestDiscountPercent"],
        lastAddToCart: DateTime.parse(json["lastAddToCart"]),
        lastAddToCartThatSold: DateTime.parse(json["lastAddToCartThatSold"]),
      );

  Map<String, dynamic> toJson() => {
        "slNo": slNo,
        "sellerName": sellerName,
        "sellerProfilePhoto": sellerProfilePhoto,
        "sellerItemPhoto": sellerItemPhoto,
        "ezShopName": ezShopName,
        "defaultPushScore": defaultPushScore,
        "aboutCompany": aboutCompany,
        "allowCOD": allowCod,
        "division": division,
        "subDivision": subDivision,
        "city": city,
        "state": state,
        "zipcode": zipcode,
        "country": country,
        "currencyCode": currencyCode,
        "orderQty": orderQty,
        "orderAmount": orderAmount,
        "salesQty": salesQty,
        "salesAmount": salesAmount,
        "highestDiscountPercent": highestDiscountPercent,
        "lastAddToCart": lastAddToCart.toIso8601String(),
        "lastAddToCartThatSold": lastAddToCartThatSold.toIso8601String(),
      };
}
