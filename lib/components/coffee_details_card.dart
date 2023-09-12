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
      return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          color: Colors.grey.shade200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
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
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        providerObj.coffeeDetailsList[widget.Index].coffeeName),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        providerObj.coffeeDetailsList[widget.Index].coffeePrice
                            .toString(),
                        style: TextStyle(fontSize: 16),
                      ),
                      IconButton(
                        icon:
                            providerObj.coffeeDetailsList[widget.Index].isFav ==
                                    true
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Icon(
                                    Icons.favorite_border,
                                    size: 20,
                                  ),
                        onPressed: () {
                          providerObj.changeFav(widget.Index);
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
