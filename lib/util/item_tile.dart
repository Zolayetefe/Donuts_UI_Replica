import 'package:flutter/material.dart';

class ItemTile extends StatelessWidget {
  final String flavor;
  final color;
  final String price;
  final String imagePath;

  const ItemTile({super.key, required this.flavor, required this.color,required this.price, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
            Container(
              decoration: BoxDecoration(
                color: color[200],
                borderRadius: const BorderRadius.only(topRight:Radius.circular(8),bottomLeft: Radius.circular(8) )
              ),
              padding: const EdgeInsets.all(12),
              child: Text("\$$price",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: color),),)
          ],),
          // item picture
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 10),
            child: Image.asset(imagePath),
          ),
          Text(flavor,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
         const SizedBox(height: 4,),
         Text("mammy delivery",style: TextStyle(color: Colors.grey[600])),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon(Icons.favorite,color: Colors.pink[400],),
              const Icon(Icons.add,color: Colors.grey,)
          ],),
          )
          ],
        ),
      ),
    );
  }
}