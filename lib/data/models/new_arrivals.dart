import 'dart:convert';

List<List<NewArrivalParse>> newArrivalParseFromJson(String str) =>
    List<List<NewArrivalParse>>.from(json.decode(str).map((x) =>
        List<NewArrivalParse>.from(x.map((x) => NewArrivalParse.fromJson(x)))));

String newArrivalParseToJson(List<List<NewArrivalParse>> data) =>
    json.encode(List<dynamic>.from(
        data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

class NewArrivalParse {
  NewArrivalParse({
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
  String productName;
  String shortDetails;
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
  String sellerName;
  String sellerProfilePhoto;
  String sellerCoverPhoto;
  String ezShopName;
  double defaultPushScore;
  String myProductVarId;

  factory NewArrivalParse.fromJson(Map<String, dynamic> json) =>
      NewArrivalParse(
        slNo: json["slNo"],
        productName: json["productName"],
        shortDetails: json["shortDetails"],
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
        sellerName: json["sellerName"],
        sellerProfilePhoto: json["sellerProfilePhoto"],
        sellerCoverPhoto: json["sellerCoverPhoto"],
        ezShopName: json["ezShopName"],
        defaultPushScore: json["defaultPushScore"].toDouble(),
        myProductVarId: json["myProductVarId"],
      );

  Map<String, dynamic> toJson() => {
        "slNo": slNo,
        "productName": productName,
        "shortDetails": shortDetails,
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
        "sellerName": sellerName,
        "sellerProfilePhoto": sellerProfilePhoto,
        "sellerCoverPhoto": sellerCoverPhoto,
        "ezShopName": ezShopName,
        "defaultPushScore": defaultPushScore,
        "myProductVarId": myProductVarId,
      };
}

