import 'package:flutter/material.dart';
import '../util/donut_tile.dart';

class PancakeTab extends StatelessWidget {
  // const DonutTab({Key? key}) : super(key: key);

  List PancakeList=[
    //flavour, price,imagepath,boxColor
    
    ['strawberry','Rs.49','lib/images/pancake.png',Colors.pink],
    ['Avocado','Rs.49','lib/images/pancake (1).png',Colors.red],
    ['mango','Rs.49','lib/images/pancake (2).png',Colors.yellow],
    ['chocolate','Rs.49','lib/images/pancake (3).png',Colors.purple],
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: GridView.builder(
        itemCount: PancakeList.length,
        
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.6),
            
        itemBuilder: (context, index) {
          return DonutTile(
            flavour: PancakeList[index][0],
            price: PancakeList[index][1],
            imagepath: PancakeList[index][2],
            color: PancakeList[index][3],
          );
        },
      ),
    );
  }
}
