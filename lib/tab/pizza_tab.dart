
import 'package:flutter/material.dart';

import '../util/item_tile.dart';

class PizzaTab extends StatelessWidget {
   PizzaTab({super.key});
List pizzas = [
  ["Strawbery",Colors.pink,"78","assets/pizza/pizza.png"],
  [ "Icecream",Colors.blue,"34","assets/pizza/pizza (1).png"],
  ["Grape",Colors.green,"55","assets/pizza/pizza (2).png"],
  ["Choco",Colors.purple,"54","assets/pizza/pizza (3).png"]
];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzas.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.6),
      itemBuilder: (context, index) {
        return ItemTile(
          flavor:pizzas[index][0],
          color:pizzas[index][1],
          price:pizzas[index][2],
          imagePath:pizzas[index][3]
        );
      },
    );
  }
}