
import 'package:flutter/material.dart';

import '../util/item_tile.dart';

class DonutTab extends StatelessWidget {
   DonutTab({super.key});
List donuts = [
  ["Strawbery",Colors.pink,"78","assets/donut/donut.png"],
  [ "Icecream",Colors.blue,"34","assets/donut/donut (1).png"],
  ["Grape",Colors.green,"55","assets/donut/donut (2).png"],
  ["Choco",Colors.purple,"54","assets/donut/doughnut.png"]
];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donuts.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.6),
      itemBuilder: (context, index) {
        return ItemTile(
          flavor:donuts[index][0],
          color:donuts[index][1],
          price:donuts[index][2],
          imagePath:donuts[index][3]
        );
      },
    );
  }
}