import 'package:coffee_app/model/categeroy_details_model.dart';
import 'package:coffee_app/model/categeroy_title_model.dart';
import 'package:coffee_app/model/coffee_size_model.dart';
import 'package:flutter/material.dart';

class CoffeeProvider extends ChangeNotifier {
  List<TitleModel> _titleList = [];
  List<TitleModel> get coffeeTitleModel => _titleList;

  List<CoffeeDetails> _coffeeDetailsList = [];
  List<CoffeeDetails> get coffeeDetailsList => _coffeeDetailsList;

  List<CoffeeSizeModel> _coffeeSize = [];
  List<CoffeeSizeModel> get coffeeSize => _coffeeSize;

  List<CoffeeDetails> _coffeeCartList = [];
  List<CoffeeDetails> get coffeeCartList => _coffeeCartList;

  insertMainCategeroy() {
    coffeeTitleModel.add(TitleModel(title: "Popular", isClicked: true));
    coffeeTitleModel.add(TitleModel(title: "Best Selling", isClicked: false));
    coffeeTitleModel.add(TitleModel(title: "New Arrival", isClicked: false));
    coffeeTitleModel.add(TitleModel(title: "Special", isClicked: false));
    coffeeTitleModel.add(TitleModel(title: "Populer", isClicked: false));
    coffeeTitleModel.add(TitleModel(title: "Populer", isClicked: false));
    coffeeTitleModel.add(TitleModel(title: "Populer", isClicked: false));
    notifyListeners();
  }

  insertCoffeeDetails() {
    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeTitle: "",
        coffeeSubtitle: "coffeeSubtitle",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1498804103079-a6351b050096?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29mZmVlJTIwaW1hZ2VzJTIwZnJlZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 0));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeTitle: "",
        coffeeSubtitle: "coffeeSubtitle",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1582581720432-de83a98176ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvZmZlZSUyMGltYWdlcyUyMGZyZWV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 0));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeTitle: "",
        coffeeSubtitle: "coffeeSubtitle",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1582581720432-de83a98176ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvZmZlZSUyMGltYWdlcyUyMGZyZWV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 0));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeTitle: "",
        coffeeSubtitle: "coffeeSubtitle",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1582581720432-de83a98176ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvZmZlZSUyMGltYWdlcyUyMGZyZWV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 0));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeTitle: "",
        coffeeSubtitle: "coffeeSubtitle",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1589902820171-a459fb375c05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNvZmZlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 0));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeTitle: "",
        coffeeSubtitle: "coffeeSubtitle",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1589902820171-a459fb375c05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNvZmZlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 0));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeTitle: "",
        coffeeSubtitle: "coffeeSubtitle",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1582581720432-de83a98176ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvZmZlZSUyMGltYWdlcyUyMGZyZWV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 0));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeTitle: "",
        coffeeSubtitle: "coffeeSubtitle",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1613336026275-d6d473084e85?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80',
        coffeeNewPrice: 0));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeTitle: "",
        coffeeSubtitle: "coffeeSubtitle",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1582581720432-de83a98176ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvZmZlZSUyMGltYWdlcyUyMGZyZWV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 0));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeTitle: "",
        coffeeSubtitle: "coffeeSubtitle",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1613336026275-d6d473084e85?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2940&q=80',
        coffeeNewPrice: 0));

    notifyListeners();
  }

  void addStock(int index) {
    coffeeDetailsList[index].coffeeStock =
        coffeeDetailsList[index].coffeeStock + 1;
    notifyListeners();
  }

  void minusStock(int index) {
    coffeeDetailsList[index].coffeeStock =
        coffeeDetailsList[index].coffeeStock - 1;
    print(coffeeDetailsList[index].coffeeStock);
    notifyListeners();
  }

  void changeFav(int index) {
    coffeeDetailsList[index].isFav = !coffeeDetailsList[index].isFav;
    notifyListeners();
  }

  insertCoffeeSize() {
    _coffeeSize.add(
        CoffeeSizeModel(coffeeSize: "S", coffeeChecked: true, coffeeMulti: 1));
    _coffeeSize.add(
        CoffeeSizeModel(coffeeSize: "M", coffeeChecked: false, coffeeMulti: 2));
    _coffeeSize.add(
        CoffeeSizeModel(coffeeSize: "L", coffeeChecked: false, coffeeMulti: 3));
    // notifyListeners();
  }

  changeCoffeeSize(int index, int coffeeDetailsIndex) {
    for (int i = 0; i < _coffeeSize.length; i++) {
      if (_coffeeSize[i].coffeeChecked) {
        _coffeeSize[i].coffeeChecked = false;
      }
      _coffeeSize[index].coffeeChecked = true;
      coffeeDetailsList[coffeeDetailsIndex].coffeeNewPrice =
          coffeeDetailsList[coffeeDetailsIndex].coffeePrice *
              _coffeeSize[index].coffeeMulti;
    }

    notifyListeners();
  }
}
