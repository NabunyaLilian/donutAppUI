import 'package:donut_app/tabs/widgets/donut_tile.dart';
import 'package:flutter/material.dart';

class DonutTab extends StatelessWidget {
  DonutTab({super.key});

  //list of donuts for sale
  final List donutsOnSale = [
    ["Strawberry", "36", Colors.blue, "assets/images/donut2.png"],
    ["Lemonade", "45", Colors.orange, "assets/images/doughnut.png"],
    ["Choco", "84", Colors.brown, "assets/images/donut3.png"],
    ["Ice Cream", "95", Colors.red, "assets/images/donut1.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1 / 1.6),
        itemCount: donutsOnSale.length,
        padding: const EdgeInsets.all(20),
        itemBuilder: (context, index) {
          return DonutTile(
            donutFlavor: donutsOnSale[index][0],
            donutPrice: donutsOnSale[index][1],
            donutColor: donutsOnSale[index][2],
            donutImage: donutsOnSale[index][3],
          );
        });
  }
}
