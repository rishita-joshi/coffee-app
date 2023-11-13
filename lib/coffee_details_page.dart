import 'package:coffee_app/add_to_cart_page.dart';
import 'package:coffee_app/components/horizational_list.dart';
import 'package:coffee_app/provider/coffee_provider.dart';
import 'package:coffee_app/ui/theme_class.dart';
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
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 30, right: 10),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: ThemeClass.brownColor),
              onPressed: () {
                providerObj.addToCart(widget.Index);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddToCartPage()));
              },
              child: Text(
                "Buy Now",
                style: TextStyle(color: ThemeClass.whiteColor),
              )),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              CachedNetworkImage(
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                imageUrl:
                    providerObj.coffeeDetailsList[widget.Index].coffeeImage,
              ),
              Positioned(
                top: 260,
                child: SingleChildScrollView(
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
                            providerObj
                                .coffeeDetailsList[widget.Index].coffeeName,
                            style: TextStyle(fontSize: 30, color: Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),

                          //  Text("Coffee Price"),
                          Text(
                              " "
                              '\$'
                              " ${providerObj.coffeeDetailsList[widget.Index].coffeeNewPrice.toString()}",
                              style: ThemeClass.titleTextStyle),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Discription", style: ThemeClass.titleTextStyle),
                          SizedBox(
                            height: 10,
                          ),
                          Text(providerObj
                              .coffeeDetailsList[widget.Index].coffeeSubtitle),
                          SizedBox(
                            height: 10,
                          ),
                          Text("Size Of Coffee",
                              style: ThemeClass.titleTextStyle),
                          SizedBox(
                            height: 10,
                          ),
                          HorizontalList(
                              itemCount: providerObj
                                  .coffeeDetailsList[widget.Index]
                                  .coffeeSizeModel
                                  .length,
                              itemBuilder: (context, sizeIndex) {
                                return InkWell(
                                  onTap: () {
                                    providerObj.changeCoffeeSize(
                                        sizeIndex, widget.Index);
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: providerObj
                                            .coffeeDetailsList[widget.Index]
                                            .coffeeSizeModel[sizeIndex]
                                            .coffeeChecked
                                        ? BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: ThemeClass.brownColor)
                                        : BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                width: 2.0,
                                                color: ThemeClass.brownColor),
                                          ),
                                    child: Center(
                                      child: Text(
                                        providerObj
                                            .coffeeDetailsList[widget.Index]
                                            .coffeeSizeModel[sizeIndex]
                                            .coffeeSize,
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: providerObj
                                                    .coffeeDetailsList[
                                                        widget.Index]
                                                    .coffeeSizeModel[sizeIndex]
                                                    .coffeeChecked
                                                ? ThemeClass.whiteColor
                                                : ThemeClass.blackColor),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}



//   providerObj.coffeeDetailsList[widget.Index]
//                                         .coffeeStock ==
//                                     0
//                                 ? Container(
//                                     width: 35,
//                                     height: 35,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: ThemeClass.brownColor,
//                                       border: Border.all(
//                                           width: 2.0,
//                                           color: ThemeClass.brownColor),
//                                     ),
//                                     child: Center(
//                                       child: IconButton(
//                                         onPressed: () {
//                                           providerObj.addStock(widget.Index);
//                                         },
//                                         iconSize: 15,
//                                         icon: Icon(
//                                           Icons.add,
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                     ))
//                                 : Row(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
                                   //    Container(
                                   //      width: 35,
                                   //      height: 35,
                                   //      decoration: BoxDecoration(
                                   //        border: Border.all(
                                   //            width: 2.0,
                                   //            color: ThemeClass.brownColor),
                                   //        shape: BoxShape.circle,
                                   //      ),
                                   //      child: IconButton(
                                   //          iconSize: 15,
                                   //          onPressed: () {
                                   //            providerObj
                                   //                .addStock(widget.Index);
                                   //          },
                                   //          icon: Icon(Icons.add)),
                                   //    ),

                              //       Text(
                              //   providerObj
                              //       .coffeeDetailsList[widget.Index].coffeeStock
                              //       .toString(),
                              //   style: TextStyle(),
                              // ),
                              // SizedBox(
                              //   width: 20,
                              // ),
                              // Container(
                              //   width: 35,
                              //   height: 35,
                              //   decoration: BoxDecoration(
                              //     border: Border.all(
                              //         width: 2.0, color: ThemeClass.brownColor),
                              //     shape: BoxShape.circle,
                              //   ),
                              //   child: IconButton(
                              //       iconSize: 15,
                              //       onPressed: () {
                              //         providerObj.minusStock(widget.Index);
                              //       },
                              //       icon: Icon(Icons.remove)),
                              // ),
                          