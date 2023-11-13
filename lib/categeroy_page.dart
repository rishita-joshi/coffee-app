import 'package:coffee_app/components/coffee_details_card.dart';
import 'package:coffee_app/provider/coffee_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CagetegeroyPage extends StatefulWidget {
  const CagetegeroyPage({super.key});

  @override
  State<CagetegeroyPage> createState() => _CagetegeroyPageState();
}

class _CagetegeroyPageState extends State<CagetegeroyPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<CoffeeProvider>(context, listen: false).insertCoffeeDetails();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeProvider>(builder: (context, providerObj, child) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 4,
          title: Text("Coffee App"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: 1.2,
                    children: List.generate(
                        providerObj.coffeeDetailsList.length, (index) {
                      return CoffeeDetailsCard(
                        Index: index,
                      );
                    })),
              ),
            ],
          ),
        ),
      );
    });
  }
}
