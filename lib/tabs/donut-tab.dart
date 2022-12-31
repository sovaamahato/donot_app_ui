import 'package:flutter/material.dart';
import '../util/donut_tile.dart';

class DonutTab extends StatelessWidget {
  // const DonutTab({Key? key}) : super(key: key);

  List donutList=[
    //flavour, price,imagepath,boxColor
    ['strawberry','Rs.49','lib/images/donut.png',Colors.blue],
    ['Avocado','Rs.49','lib/images/donut1.png',Colors.green],
    ['mango','Rs.49','lib/images/donut2.png',Colors.red],
    ['chocolate','Rs.49','lib/images/donut3.png',Colors.orange],
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:15.0),
      child: GridView.builder(
        itemCount: donutList.length,
        
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.6),
            
        itemBuilder: (context, index) {
          return DonutTile(
            flavour: donutList[index][0],
            price: donutList[index][1],
            imagepath: donutList[index][2],
            color: donutList[index][3],
          );
        },
      ),
    );
  }
}
