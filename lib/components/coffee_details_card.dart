import 'package:coffee_app/coffee_details_page.dart';
import 'package:coffee_app/provider/coffee_provider.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';

class CoffeeDetailsCard extends StatefulWidget {
  const CoffeeDetailsCard({super.key, required this.Index});

  final int Index;
  @override
  State<CoffeeDetailsCard> createState() => _CoffeeDetailsCardState();
}

class _CoffeeDetailsCardState extends State<CoffeeDetailsCard> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeProvider>(builder: (context, providerObj, child) {
      return Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.shade100,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CoffeeDetailsScreen(
                                    Index: widget.Index,
                                  )));
                    },
                    child: CachedNetworkImage(
                        height: 90,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fitWidth,
                        imageUrl: providerObj
                            .coffeeDetailsList[widget.Index].coffeeImage),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey, // Grey background
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.grey,
                          Colors.white,
                        ],
                      ),
                    ),
                    child: IconButton(
                      icon: providerObj.coffeeDetailsList[widget.Index].isFav ==
                              true
                          ? Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 20,
                            )
                          : Icon(
                              Icons.favorite_border,
                              size: 20,
                            ),
                      onPressed: () {
                        providerObj.changeFav(widget.Index);
                      },
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    providerObj.coffeeDetailsList[widget.Index].coffeeName,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    providerObj.coffeeDetailsList[widget.Index].coffeePrice
                        .toString(),
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
