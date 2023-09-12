import 'dart:convert';

TitleModel titleModelFromJson(String str) =>
    TitleModel.fromJson(json.decode(str));

String titleModelToJson(TitleModel data) => json.encode(data.toJson());

class TitleModel {
  String title;
  bool isClicked;

  TitleModel({
    required this.title,
    required this.isClicked,
  });

  factory TitleModel.fromJson(Map<String, dynamic> json) => TitleModel(
        title: json["title"],
        isClicked: json["isClicked"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "isClicked": isClicked,
      };
}
