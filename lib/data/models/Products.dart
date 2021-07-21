// To parse this JSON data, do
//
//     final productParse = productParseFromJson(jsonString);

import 'dart:convert';

List<List<ProductParse>> productParseFromJson(String str) =>
    List<List<ProductParse>>.from(json.decode(str).map((x) =>
        List<ProductParse>.from(x.map((x) => ProductParse.fromJson(x)))));

String productParseToJson(List<List<ProductParse>> data) =>
    json.encode(List<dynamic>.from(
        data.map((x) => List<dynamic>.from(x.map((x) => x.toJson())))));

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
  StoryType storyType;
  String storyImage;
  String storyAdditionalImages;
  String promoImage;
  int orderQty;
  DateTime lastAddToCart;
  int availableStock;
  String myId;
  EzShopName ezShopName;
  Name companyName;
  String companyLogo;
  CompanyEmail companyEmail;
  CurrencyCode currencyCode;
  int unitPrice;
  int discountAmount;
  int discountPercent;
  String iMyId;
  Name shopName;
  String shopLogo;
  String shopLink;
  String friendlyTimeDiff;
  String slNo;

  factory ProductParse.fromJson(Map<String, dynamic> json) => ProductParse(
        storyTime: DateTime.parse(json["storyTime"]),
        story: json["story"],
        storyType: storyTypeValues.map[json["storyType"]],
        storyImage: json["storyImage"],
        storyAdditionalImages: json["storyAdditionalImages"],
        promoImage: json["promoImage"],
        orderQty: json["orderQty"],
        lastAddToCart: DateTime.parse(json["lastAddToCart"]),
        availableStock: json["availableStock"],
        myId: json["myId"],
        ezShopName: ezShopNameValues.map[json["ezShopName"]],
        companyName: nameValues.map[json["companyName"]],
        companyLogo: json["companyLogo"],
        companyEmail: companyEmailValues.map[json["companyEmail"]],
        currencyCode: currencyCodeValues.map[json["currencyCode"]],
        unitPrice: json["unitPrice"],
        discountAmount: json["discountAmount"],
        discountPercent: json["discountPercent"],
        iMyId: json["iMyID"],
        shopName: nameValues.map[json["shopName"]],
        shopLogo: json["shopLogo"],
        shopLink: json["shopLink"],
        friendlyTimeDiff: json["friendlyTimeDiff"],
        slNo: json["slNo"],
      );

  Map<String, dynamic> toJson() => {
        "storyTime": storyTime.toIso8601String(),
        "story": story,
        "storyType": storyTypeValues.reverse[storyType],
        "storyImage": storyImage,
        "storyAdditionalImages": storyAdditionalImages,
        "promoImage": promoImage,
        "orderQty": orderQty,
        "lastAddToCart": lastAddToCart.toIso8601String(),
        "availableStock": availableStock,
        "myId": myId,
        "ezShopName": ezShopNameValues.reverse[ezShopName],
        "companyName": nameValues.reverse[companyName],
        "companyLogo": companyLogo,
        "companyEmail": companyEmailValues.reverse[companyEmail],
        "currencyCode": currencyCodeValues.reverse[currencyCode],
        "unitPrice": unitPrice,
        "discountAmount": discountAmount,
        "discountPercent": discountPercent,
        "iMyID": iMyId,
        "shopName": nameValues.reverse[shopName],
        "shopLogo": shopLogo,
        "shopLink": shopLink,
        "friendlyTimeDiff": friendlyTimeDiff,
        "slNo": slNo,
      };
}

enum CompanyEmail {
  THE_07_ANIKA_KABIR_GMAIL_COM,
  DRESSDESTINATIONDHAKA_GMAIL_COM,
  SULTANA_SARA4_GMAIL_COM,
  SHUVO_LOOSELYCOUPLED_ORG
}

final companyEmailValues = EnumValues({
  "dressdestinationdhaka@gmail.com":
      CompanyEmail.DRESSDESTINATIONDHAKA_GMAIL_COM,
  "shuvo@looselycoupled.org": CompanyEmail.SHUVO_LOOSELYCOUPLED_ORG,
  "sultana.sara4@gmail.com": CompanyEmail.SULTANA_SARA4_GMAIL_COM,
  "07anika.kabir@gmail.com": CompanyEmail.THE_07_ANIKA_KABIR_GMAIL_COM
});

enum Name {
  FASHION_PUNCH,
  D3_DRESS_DESTINATION_DHAKA,
  DRESS_MEET,
  DURONTO_KIDS
}

final nameValues = EnumValues({
  "D3: Dress Destination Dhaka": Name.D3_DRESS_DESTINATION_DHAKA,
  "DressMeet": Name.DRESS_MEET,
  "Duronto Kids": Name.DURONTO_KIDS,
  "Fashion Punch": Name.FASHION_PUNCH
});

enum CurrencyCode { BDT, CURRENCY_CODE_BDT }

final currencyCodeValues = EnumValues(
    {"bdt": CurrencyCode.BDT, "BDT": CurrencyCode.CURRENCY_CODE_BDT});

enum EzShopName {
  FASHIONPUNCH,
  D3_DRESS_DESTINATION_DHAKA,
  DRESS_MEET,
  DURONTOKIDS
}

final ezShopNameValues = EnumValues({
  "D3DressDestinationDhaka": EzShopName.D3_DRESS_DESTINATION_DHAKA,
  "DressMeet": EzShopName.DRESS_MEET,
  "durontokids": EzShopName.DURONTOKIDS,
  "fashionpunch": EzShopName.FASHIONPUNCH
});

enum StoryType { REGULAR, NEW_ARRIVAL }

final storyTypeValues = EnumValues(
    {"New Arrival": StoryType.NEW_ARRIVAL, "Regular": StoryType.REGULAR});

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
