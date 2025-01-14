import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String flavor;
  final Color color;
  final int price;
  final String imagePath;

  const ItemTile({super.key, required this.flavor, required this.color,required this.price, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: color,
      ),
    );
  }
}