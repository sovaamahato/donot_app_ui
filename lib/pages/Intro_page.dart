import 'dart:ffi';

import 'package:flutter/material.dart';
import '/pages/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          //image
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Center(
                child: Image.asset(
              "lib/images/doughnut.png",
              height: 200,
            )),
          ),
          SizedBox(
            height: 20,
          ),

          //text
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              "Let's celebrate Eating with yummy donuts.",
              style: GoogleFonts.notoSerif(fontSize: 30),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text("you'll find delicious items here!!!"),
          ),
          //button
          SizedBox(
            height: 80,
          ),
          
            
           GestureDetector(
            onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Homepage()),)),
             child: Container(
              
                
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.pink[400],
                    borderRadius: BorderRadius.circular(13)),
                    
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
              ),
           ),
         
        ],
      ),
    );
  }
}
