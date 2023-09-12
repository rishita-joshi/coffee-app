// To parse this JSON data, do
//
//     final coffeeSizeModel = coffeeSizeModelFromJson(jsonString);

import 'dart:convert';

CoffeeSizeModel coffeeSizeModelFromJson(String str) =>
    CoffeeSizeModel.fromJson(json.decode(str));

String coffeeSizeModelToJson(CoffeeSizeModel data) =>
    json.encode(data.toJson());

class CoffeeSizeModel {
  String coffeeSize;
  bool coffeeChecked;
  int coffeeMulti;

  CoffeeSizeModel({
    required this.coffeeSize,
    required this.coffeeChecked,
    required this.coffeeMulti,
  });

  CoffeeSizeModel copyWith({
    String? coffeeSize,
    bool? coffeeChecked,
    int? coffeeMulti,
  }) =>
      CoffeeSizeModel(
        coffeeSize: coffeeSize ?? this.coffeeSize,
        coffeeChecked: coffeeChecked ?? this.coffeeChecked,
        coffeeMulti: coffeeMulti ?? this.coffeeMulti,
      );

  factory CoffeeSizeModel.fromJson(Map<String, dynamic> json) =>
      CoffeeSizeModel(
        coffeeSize: json["coffee_Size"],
        coffeeChecked: json["coffee_checked"],
        coffeeMulti: json["coffee_multi"],
      );

  Map<String, dynamic> toJson() => {
        "coffee_Size": coffeeSize,
        "coffee_checked": coffeeChecked,
        "coffee_multi": coffeeMulti,
      };
}
