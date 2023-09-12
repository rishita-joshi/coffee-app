import 'package:coffee_app/model/categeroy_details_model.dart';
import 'package:coffee_app/provider/coffee_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddToCartPage extends StatefulWidget {
  AddToCartPage({super.key, required this.providerObj});

  final CoffeeProvider providerObj;
  @override
  State<AddToCartPage> createState() => _AddToCartPageState();
}

class _AddToCartPageState extends State<AddToCartPage> {
  List<CoffeeDetails> coffeeDetails = [];
  List<CoffeeDetails> result = [];
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeProvider>(builder: (context, providerObj, child) {
      return Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                child: FutureBuilder<List<CoffeeDetails>>(
                    future: getCartList(),
                    builder: (context, snapshot) {
                      print("---->${snapshot}");

                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircularProgressIndicator();
                      } else {
                        return ListView.builder(
                            itemCount: coffeeDetails.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                leading: Text(coffeeDetails[index].coffeeTitle),
                                trailing: Text(coffeeDetails[index]
                                    .coffeeNewPrice
                                    .toString()),
                              );
                            });
                      }
                    }))
          ],
        ),
      );
    });
  }

  Future<List<CoffeeDetails>> getCartList() async {
    for (int i = 0; i < widget.providerObj.coffeeDetailsList.length; i++) {
      if (widget.providerObj.coffeeDetailsList[i].coffeeNewPrice > 0) {
        result.add(widget.providerObj.coffeeDetailsList[i]);
        print(result);
      }
    }
    coffeeDetails.addAll(result);
    print(coffeeDetails);
    return coffeeDetails;
  }
}
