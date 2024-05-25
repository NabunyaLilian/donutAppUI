import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  const DonutTile({
    super.key,
    required this.donutFlavor,
    required this.donutPrice,
    required this.donutColor,
    required this.donutImage,
  });
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String donutImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: donutColor[50], borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: donutColor[100],
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
                child: Text(
                  '\$ $donutPrice',
                  style: TextStyle(
                      color: donutColor[800],
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Image.asset(donutImage),
          ),
          Text(
            donutFlavor,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            'Dunkin\'s',
            style: TextStyle(color: Colors.grey[800], fontSize: 12),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.favorite_border)),
              const Padding(
                padding: EdgeInsets.only(right: 12.0),
                child: Text(
                  'Add',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
