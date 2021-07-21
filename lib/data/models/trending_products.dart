// To parse this JSON data, do
//
//     final trendingProductparse = trendingProductparseFromJson(jsonString);

import 'dart:convert';

List<List<TrendingProductparse>> trendingProductparseFromJson(String str) =>
    List<List<TrendingProductparse>>.from(json.decode(str).map((x) =>
        List<TrendingProductparse>.from(
            x.map((x) => TrendingProductparse.fromJson(x)))));

String trendingProductparseToJson(List<List<TrendingProductparse>> data) =>
    json.encode(List<dynamic>.from(
        data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class TrendingProductparse {
  TrendingProductparse({
    this.slNo,
    this.productName,
    this.shortDetails,
    this.productDescription,
    this.availableStock,
    this.orderQty,
    this.salesQty,
    this.orderAmount,
    this.salesAmount,
    this.discountPercent,
    this.discountAmount,
    this.unitPrice,
    this.productImage,
    this.sellerName,
    this.sellerProfilePhoto,
    this.sellerCoverPhoto,
    this.ezShopName,
    this.defaultPushScore,
    this.myProductVarId,
  });

  String slNo;
  ProductName productName;
  ShortDetails shortDetails;
  String productDescription;
  int availableStock;
  int orderQty;
  int salesQty;
  int orderAmount;
  int salesAmount;
  int discountPercent;
  int discountAmount;
  int unitPrice;
  String productImage;
  SellerName sellerName;
  String sellerProfilePhoto;
  String sellerCoverPhoto;
  EzShopName ezShopName;
  int defaultPushScore;
  String myProductVarId;

  factory TrendingProductparse.fromJson(Map<String, dynamic> json) =>
      TrendingProductparse(
        slNo: json["slNo"],
        productName: productNameValues.map[json["productName"]],
        shortDetails: shortDetailsValues.map[json["shortDetails"]],
        productDescription: json["productDescription"],
        availableStock: json["availableStock"],
        orderQty: json["orderQty"],
        salesQty: json["salesQty"],
        orderAmount: json["orderAmount"],
        salesAmount: json["salesAmount"],
        discountPercent: json["discountPercent"],
        discountAmount: json["discountAmount"],
        unitPrice: json["unitPrice"],
        productImage: json["productImage"],
        sellerName: sellerNameValues.map[json["sellerName"]],
        sellerProfilePhoto: json["sellerProfilePhoto"],
        sellerCoverPhoto: json["sellerCoverPhoto"],
        ezShopName: ezShopNameValues.map[json["ezShopName"]],
        defaultPushScore: json["defaultPushScore"],
        myProductVarId: json["myProductVarId"],
      );

  Map<String, dynamic> toJson() => {
        "slNo": slNo,
        "productName": productNameValues.reverse[productName],
        "shortDetails": shortDetailsValues.reverse[shortDetails],
        "productDescription": productDescription,
        "availableStock": availableStock,
        "orderQty": orderQty,
        "salesQty": salesQty,
        "orderAmount": orderAmount,
        "salesAmount": salesAmount,
        "discountPercent": discountPercent,
        "discountAmount": discountAmount,
        "unitPrice": unitPrice,
        "productImage": productImage,
        "sellerName": sellerNameValues.reverse[sellerName],
        "sellerProfilePhoto": sellerProfilePhoto,
        "sellerCoverPhoto": sellerCoverPhoto,
        "ezShopName": ezShopNameValues.reverse[ezShopName],
        "defaultPushScore": defaultPushScore,
        "myProductVarId": myProductVarId,
      };
}

enum EzShopName { DIVINEFASHION, NEELABH_HOUSE }

final ezShopNameValues = EnumValues({
  "divinefashion": EzShopName.DIVINEFASHION,
  "NeelabhHouse": EzShopName.NEELABH_HOUSE
});

enum ProductName {
  PREMIUM_CHECK_SHIRT,
  HANDLOOM_COTTON_SAREE,
  PREMIUM_TWILL_PANT
}

final productNameValues = EnumValues({
  "Handloom Cotton Saree": ProductName.HANDLOOM_COTTON_SAREE,
  "Premium Check Shirt": ProductName.PREMIUM_CHECK_SHIRT,
  "Premium Twill Pant": ProductName.PREMIUM_TWILL_PANT
});

enum SellerName { DIVINE_FASHION, NEELABH_HUES_OF_BLUES }

final sellerNameValues = EnumValues({
  "Divine Fashion": SellerName.DIVINE_FASHION,
  "নীলাভ - Neelabh - Hues of Blues": SellerName.NEELABH_HUES_OF_BLUES
});

enum ShortDetails {
  PRICE_BDT_59000,
  PRICE_BDT_239000,
  PRICE_BDT_65000,
  PRICE_BDT_219000
}

final shortDetailsValues = EnumValues({
  "Price: BDT 2,190.00": ShortDetails.PRICE_BDT_219000,
  "Price: BDT 2,390.00": ShortDetails.PRICE_BDT_239000,
  "Price: BDT 590.00": ShortDetails.PRICE_BDT_59000,
  "Price: BDT 650.00": ShortDetails.PRICE_BDT_65000
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
