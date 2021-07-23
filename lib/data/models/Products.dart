// To parse this JSON data, do
//
//     final productParse = productParseFromJson(jsonString);

import 'dart:convert';

List<List<ProductParse>> productParseFromJson(String str) =>
    List<List<ProductParse>>.from(json.decode(str).map((x) =>
        List<ProductParse>.from(x.map((x) => ProductParse.fromJson(x)))));

// String productParseToJson(List<List<ProductParse>> data) =>
//     json.encode(List<dynamic>.from(
//         data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class ProductParse {
  ProductParse({
    this.storyTime,
    this.story,
    this.storyType,
    this.storyImage,
    this.storyAdditionalImages,
    this.promoImage,
    this.orderQty,
    this.lastAddToCart,
    this.availableStock,
    this.myId,
    this.ezShopName,
    this.companyName,
    this.companyLogo,
    this.companyEmail,
    this.currencyCode,
    this.unitPrice,
    this.discountAmount,
    this.discountPercent,
    this.iMyId,
    this.shopName,
    this.shopLogo,
    this.shopLink,
    this.friendlyTimeDiff,
    this.slNo,
  });

  DateTime storyTime;
  String story;
  String storyType;
  String storyImage;
  String storyAdditionalImages;
  String promoImage;
  int orderQty;
  DateTime lastAddToCart;
  int availableStock;
  String myId;
  String ezShopName;
  String companyName;
  String companyLogo;
  String companyEmail;
  String currencyCode;
  int unitPrice;
  int discountAmount;
  int discountPercent;
  String iMyId;
  String shopName;
  String shopLogo;
  String shopLink;
  String friendlyTimeDiff;
  String slNo;

  factory ProductParse.fromJson(Map<String, dynamic> json) => ProductParse(
        storyTime: DateTime.parse(json["storyTime"]),
        story: json["story"],
        storyType: json["storyType"],
        storyImage: json["storyImage"],
        storyAdditionalImages: json["storyAdditionalImages"],
        promoImage: json["promoImage"],
        orderQty: json["orderQty"],
        lastAddToCart: DateTime.parse(json["lastAddToCart"]),
        availableStock: json["availableStock"],
        myId: json["myId"],
        ezShopName: json["ezShopName"],
        companyName: json["companyName"],
        companyLogo: json["companyLogo"],
        companyEmail: json["companyEmail"],
        currencyCode: json["currencyCode"],
        unitPrice: json["unitPrice"],
        discountAmount: json["discountAmount"],
        discountPercent: json["discountPercent"],
        iMyId: json["iMyID"],
        shopName: json["shopName"],
        shopLogo: json["shopLogo"],
        shopLink: json["shopLink"],
        friendlyTimeDiff: json["friendlyTimeDiff"],
        slNo: json["slNo"],
      );

  Map<String, dynamic> toJson() => {
        "storyTime": storyTime.toIso8601String(),
        "story": story,
        "storyType": storyType,
        "storyImage": storyImage,
        "storyAdditionalImages": storyAdditionalImages,
        "promoImage": promoImage,
        "orderQty": orderQty,
        "lastAddToCart": lastAddToCart.toIso8601String(),
        "availableStock": availableStock,
        "myId": myId,
        "ezShopName": ezShopName,
        "companyName": companyName,
        "companyLogo": companyLogo,
        "companyEmail": companyEmail,
        "currencyCode": currencyCode,
        "unitPrice": unitPrice,
        "discountAmount": discountAmount,
        "discountPercent": discountPercent,
        "iMyID": iMyId,
        "shopName": shopName,
        "shopLogo": shopLogo,
        "shopLink": shopLink,
        "friendlyTimeDiff": friendlyTimeDiff,
        "slNo": slNo,
      };
}
