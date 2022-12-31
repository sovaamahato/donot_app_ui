import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  // const MyTab({Key? key}) : super(key: key);
  final String imagepath;
  MyTab({required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.black12),
      
      width:100,
      child: Image.asset(imagepath),
    );
    
  }
}