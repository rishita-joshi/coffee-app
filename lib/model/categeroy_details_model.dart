// To parse this JSON data, do
//
//     final coffeeDetails = coffeeDetailsFromJson(jsonString);

import 'dart:convert';

CoffeeDetails coffeeDetailsFromJson(String str) =>
    CoffeeDetails.fromJson(json.decode(str));

String coffeeDetailsToJson(CoffeeDetails data) => json.encode(data.toJson());

class CoffeeDetails {
  String coffeeName;
  String coffeeTitle;
  String coffeeSubtitle;
  bool isFav;
  int coffeeStock;
  int coffeePrice;
  String coffeeMainCategeroy;
  String coffeeImage;
  int coffeeNewPrice;

  CoffeeDetails(
      {required this.coffeeName,
      required this.coffeeTitle,
      required this.coffeeSubtitle,
      required this.isFav,
      required this.coffeeStock,
      required this.coffeePrice,
      required this.coffeeMainCategeroy,
      required this.coffeeImage,
      required this.coffeeNewPrice});

  CoffeeDetails copyWith({
    String? coffeeName,
    String? coffeeTitle,
    String? coffeeSubtitle,
    bool? isFav,
    int? coffeeStock,
    int? coffeePrice,
    String? coffeeMainCategeroy,
    String? coffeeImage,
  }) =>
      CoffeeDetails(
          coffeeName: coffeeName ?? this.coffeeName,
          coffeeTitle: coffeeTitle ?? this.coffeeTitle,
          coffeeSubtitle: coffeeSubtitle ?? this.coffeeSubtitle,
          isFav: isFav ?? this.isFav,
          coffeeStock: coffeeStock ?? this.coffeeStock,
          coffeePrice: coffeePrice ?? this.coffeePrice,
          coffeeMainCategeroy: coffeeMainCategeroy ?? this.coffeeMainCategeroy,
          coffeeImage: coffeeImage ?? this.coffeeImage,
          coffeeNewPrice: coffeeNewPrice);

  factory CoffeeDetails.fromJson(Map<String, dynamic> json) => CoffeeDetails(
        coffeeName: json["coffee_name"],
        coffeeTitle: json["coffee_title"],
        coffeeSubtitle: json["coffee_subtitle"],
        isFav: json["isFav"],
        coffeeStock: json["coffee_stock"],
        coffeePrice: json["coffee_price"],
        coffeeMainCategeroy: json["coffee_mainCategeroy"],
        coffeeImage: json["coffee_image"],
        coffeeNewPrice: json["coffee_newPrice"],
      );

  Map<String, dynamic> toJson() => {
        "coffee_name": coffeeName,
        "coffee_title": coffeeTitle,
        "coffee_subtitle": coffeeSubtitle,
        "isFav": isFav,
        "coffee_stock": coffeeStock,
        "coffee_price": coffeePrice,
        "coffee_mainCategeroy": coffeeMainCategeroy,
        "coffee_image": coffeeImage,
        "coffee_newPrice": coffeeNewPrice
      };
}
