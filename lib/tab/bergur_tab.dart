
import 'package:flutter/material.dart';
import '../util/item_tile.dart';

class BurgerTab extends StatelessWidget {
   BurgerTab({super.key});
List burgers = [
  ["Strawbery",Colors.pink,"78","assets/burger/burger (1).png"],
  [ "Icecream",Colors.blue,"34","assets/burger/burger.png"],
  ["Grape",Colors.green,"55","assets/burger/burger-king.png"],
  ["Choco",Colors.purple,"54","assets/burger/hamburger.png"]
];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgers.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.6),
      itemBuilder: (context, index) {
        return ItemTile(
          flavor:burgers[index][0],
          color:burgers[index][1],
          price:burgers[index][2],
          imagePath:burgers[index][3]
        );
      },
    );
  }
}