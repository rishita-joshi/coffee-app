import 'package:coffee_app/model/categeroy_details_model.dart';
import 'package:coffee_app/provider/coffee_provider.dart';
import 'package:coffee_app/ui/theme_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddToCartPage extends StatefulWidget {
  AddToCartPage({super.key});

  @override
  State<AddToCartPage> createState() => _AddToCartPageState();
}

class _AddToCartPageState extends State<AddToCartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeProvider>(builder: (context, providerObj, child) {
      return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                "Total Aamount is :",
                style: ThemeClass.titleTextStyle,
              ),
              Text(
                providerObj.totalAmount.toString(),
                style: ThemeClass.titleTextStyle,
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: providerObj.coffeeCartList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: ListTile(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: ThemeClass.brownColor),
                          ),
                          leading: Text(providerObj
                              .coffeeCartList[index].coffeeName
                              .toString()),
                          trailing: Text(providerObj
                              .coffeeCartList[index].coffeeNewPrice
                              .toString()),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      );
    });
  }
}
