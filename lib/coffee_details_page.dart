import 'package:coffee_app/cart_page.dart';
import 'package:coffee_app/components/horizational_list.dart';
import 'package:coffee_app/provider/coffee_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CoffeeDetailsScreen extends StatefulWidget {
  const CoffeeDetailsScreen({super.key, required this.Index});
  final int Index;
  @override
  State<CoffeeDetailsScreen> createState() => _CoffeeDetailsScreenState();
}

class _CoffeeDetailsScreenState extends State<CoffeeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeProvider>(builder: (context, providerObj, child) {
      return Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(children: [
            CachedNetworkImage(
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width,
              imageUrl: providerObj.coffeeDetailsList[widget.Index].coffeeImage,
            ),
            Positioned(
              top: 350,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        providerObj.coffeeDetailsList[widget.Index].coffeeName,
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      Text(providerObj
                          .coffeeDetailsList[widget.Index].coffeeSubtitle),
                      Text(
                        "Size",
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      HorizontalList(
                          itemCount: providerObj.coffeeSize.length,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                providerObj.changeCoffeeSize(
                                    index, widget.Index);
                              },
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: providerObj
                                            .coffeeSize[index].coffeeChecked
                                        ? Colors.green
                                        : Colors.grey),
                                child: Center(
                                  child: Text(
                                    providerObj.coffeeSize[index].coffeeSize,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                            );
                          }),
                      Text(
                        providerObj.coffeeDetailsList[widget.Index]
                                    .coffeeNewPrice >
                                0
                            ? providerObj
                                .coffeeDetailsList[widget.Index].coffeeNewPrice
                                .toString()
                            : providerObj
                                .coffeeDetailsList[widget.Index].coffeePrice
                                .toString(),
                        style: TextStyle(fontSize: 30, color: Colors.black),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          providerObj.coffeeDetailsList[widget.Index]
                                      .coffeeStock ==
                                  0
                              ? Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: IconButton(
                                    onPressed: () {
                                      providerObj.addStock(widget.Index);
                                    },
                                    icon: Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ),
                                  ))
                              : Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey),
                                      child: IconButton(
                                          onPressed: () {
                                            providerObj.addStock(widget.Index);
                                          },
                                          icon: Icon(Icons.add)),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      providerObj
                                          .coffeeDetailsList[widget.Index]
                                          .coffeeStock
                                          .toString(),
                                      style: TextStyle(),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey),
                                      child: IconButton(
                                          onPressed: () {
                                            providerObj
                                                .minusStock(widget.Index);
                                          },
                                          icon: Icon(Icons.remove)),
                                    ),
                                  ],
                                ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AddToCartPage(
                                              providerObj: providerObj,
                                            )));
                              },
                              child: Text("Buy Now"))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ]),
        ),
      );
    });
  }
}
