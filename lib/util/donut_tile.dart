import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final color;
  final String flavour;
  final String price;
  final String imagepath;
  DonutTile(
      {required this.flavour,
      required this.price,
      required this.imagepath,
      required this.color});
  // const My({Key? key}) : super(key: key);
  final double borderRadius = 12;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: color[100],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: color[300],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(borderRadius),
                            topRight: Radius.circular(borderRadius))),
                    child: Text(
                      price,
                      style: TextStyle(
                          color: color[900], fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Image.asset(
                imagepath,
              ),
            ),
            Text(
              flavour,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                  Icon(Icons.add,color: Colors.black,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
