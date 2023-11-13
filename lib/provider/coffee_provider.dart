import 'package:coffee_app/model/categeroy_details_model.dart';
import 'package:coffee_app/model/coffee_size_model.dart';
import 'package:flutter/material.dart';

class CoffeeProvider extends ChangeNotifier {
  List<CoffeeDetails> _coffeeDetailsList = [];
  List<CoffeeDetails> get coffeeDetailsList => _coffeeDetailsList;

  List<CoffeeDetails> _coffeeCartList = [];
  List<CoffeeDetails> get coffeeCartList => _coffeeCartList;
  int totalAmount = 0;

  insertCoffeeDetails() {
    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Cappuccino",
        coffeeSubtitle:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.   took a galley of type and scrambled it to make a type specimen book .",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 20,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1498804103079-a6351b050096?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y29mZmVlJTIwaW1hZ2VzJTIwZnJlZXxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 20,
        coffeeSizeModel: [
          CoffeeSizeModel(coffeeSize: "S", coffeeChecked: true, coffeeMulti: 1),
          CoffeeSizeModel(coffeeSize: "M", coffeeChecked: false, coffeeMulti: 1)
        ]));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Latte",
        coffeeSubtitle:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.   took a galley of type and scrambled it to make a type specimen book .",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 120,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            "https://images.unsplash.com/photo-1629810836088-1fc89a476d1b?q=80&w=3027&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        coffeeNewPrice: 120,
        coffeeSizeModel: [
          CoffeeSizeModel(coffeeSize: "S", coffeeChecked: true, coffeeMulti: 1),
          CoffeeSizeModel(coffeeSize: "M", coffeeChecked: false, coffeeMulti: 1)
        ]));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Caffè mocha",
        coffeeSubtitle:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.   took a galley of type and scrambled it to make a type specimen book .",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 50,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1582581720432-de83a98176ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvZmZlZSUyMGltYWdlcyUyMGZyZWV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 50,
        coffeeSizeModel: [
          CoffeeSizeModel(coffeeSize: "S", coffeeChecked: true, coffeeMulti: 1),
          CoffeeSizeModel(coffeeSize: "M", coffeeChecked: false, coffeeMulti: 1)
        ]));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Caffè macchiato",
        coffeeSubtitle:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.   took a galley of type and scrambled it to make a type specimen book.  .",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 200,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            "https://images.unsplash.com/photo-1507133750040-4a8f57021571?q=80&w=3087&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        coffeeNewPrice: 200,
        coffeeSizeModel: [
          CoffeeSizeModel(coffeeSize: "S", coffeeChecked: true, coffeeMulti: 1),
          CoffeeSizeModel(coffeeSize: "M", coffeeChecked: false, coffeeMulti: 1)
        ]));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Americano",
        coffeeSubtitle:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.   took a galley of type and scrambled it to make a type specimen book.  .",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 30,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1589902820171-a459fb375c05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNvZmZlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 30,
        coffeeSizeModel: [
          CoffeeSizeModel(coffeeSize: "S", coffeeChecked: true, coffeeMulti: 1),
          CoffeeSizeModel(
              coffeeSize: "M", coffeeChecked: false, coffeeMulti: 1),
          CoffeeSizeModel(
              coffeeSize: "L", coffeeChecked: false, coffeeMulti: 1),
        ]));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Espresso",
        coffeeSubtitle:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.   took a galley of type and scrambled it to make a type specimen book.  .",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 90,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1589902820171-a459fb375c05?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNvZmZlZSUyMGltYWdlc3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 90,
        coffeeSizeModel: [
          CoffeeSizeModel(coffeeSize: "S", coffeeChecked: true, coffeeMulti: 1),
          CoffeeSizeModel(
              coffeeSize: "M", coffeeChecked: false, coffeeMulti: 1),
          CoffeeSizeModel(
              coffeeSize: "L", coffeeChecked: false, coffeeMulti: 1),
        ]));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Iced coffee",
        coffeeSubtitle:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.   took a galley of type and scrambled it to make a type specimen book.  .",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 100,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            'https://images.unsplash.com/photo-1582581720432-de83a98176ab?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNvZmZlZSUyMGltYWdlcyUyMGZyZWV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60',
        coffeeNewPrice: 100,
        coffeeSizeModel: [
          CoffeeSizeModel(coffeeSize: "S", coffeeChecked: true, coffeeMulti: 1),
          CoffeeSizeModel(coffeeSize: "M", coffeeChecked: false, coffeeMulti: 1)
        ]));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Café au lait",
        coffeeSubtitle:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.   took a galley of type and scrambled it to make a type specimen book.  .",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 50,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            "https://images.unsplash.com/photo-1516646227334-6102731f3c25?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        coffeeNewPrice: 50,
        coffeeSizeModel: [
          CoffeeSizeModel(coffeeSize: "S", coffeeChecked: true, coffeeMulti: 1),
          CoffeeSizeModel(coffeeSize: "M", coffeeChecked: false, coffeeMulti: 1)
        ]));

    coffeeDetailsList.add(CoffeeDetails(
        coffeeName: "Flat white",
        coffeeSubtitle:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry.   took a galley of type and scrambled it to make a type specimen book.  .",
        isFav: false,
        coffeeStock: 0,
        coffeePrice: 80,
        coffeeMainCategeroy: "Best Selling",
        coffeeImage:
            "https://plus.unsplash.com/premium_photo-1668063245248-90ee5a1ff77c?q=80&w=2942&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        coffeeNewPrice: 80,
        coffeeSizeModel: [
          CoffeeSizeModel(coffeeSize: "S", coffeeChecked: true, coffeeMulti: 1),
          CoffeeSizeModel(coffeeSize: "M", coffeeChecked: false, coffeeMulti: 1)
        ]));

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

  void changeCoffeeSize(int sizeIndex, int index) {
    for (int i = 0; i < coffeeDetailsList[index].coffeeSizeModel.length; i++) {
      if (coffeeDetailsList[index].coffeeSizeModel[i].coffeeChecked) {
        coffeeDetailsList[index].coffeeSizeModel[i].coffeeChecked = false;
      }

      coffeeDetailsList[index].coffeeSizeModel[sizeIndex].coffeeChecked = true;
      coffeeDetailsList[index].coffeeNewPrice =
          coffeeDetailsList[index].coffeePrice *
              coffeeDetailsList[index].coffeeSizeModel[sizeIndex].coffeeMulti;
    }
    notifyListeners();
  }

  void addToCart(int index) {
    //  int addAmount = 0;
    totalAmount = 0;
    if (!coffeeCartList.contains(coffeeDetailsList[index])) {
      coffeeCartList.add(coffeeDetailsList[index]);
      for (int i = 0; i < coffeeCartList.length; i++) {
        totalAmount = coffeeCartList[i].coffeeNewPrice + totalAmount;
      }
    }

    notifyListeners();
  }

//   changeCoffeeSize(int index, int coffeeDetailsIndex) {
//     for (int i = 0; i < _coffeeSize.length; i++) {
//       if (_coffeeSize[i].coffeeChecked) {
//         _coffeeSize[i].coffeeChecked = false;
//       }
//       _coffeeSize[index].coffeeChecked = true;
//       coffeeDetailsList[coffeeDetailsIndex].coffeeNewPrice =
//           coffeeDetailsList[coffeeDetailsIndex].coffeePrice *
//               _coffeeSize[index].coffeeMulti;
//     }

//     notifyListeners();
//   }
}
