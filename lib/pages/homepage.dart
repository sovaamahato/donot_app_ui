import 'package:donut_app_ui/tabs/burger_tab.dart';
import 'package:donut_app_ui/tabs/donut-tab.dart';
import 'package:donut_app_ui/tabs/icecream_tab.dart';
import 'package:donut_app_ui/tabs/pancake_tab.dart';
import 'package:donut_app_ui/tabs/pizza_tab.dart';
import 'package:flutter/material.dart';

import '../util/my_tabs.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

 List<Widget> tabOpts=[
  //donut
  MyTab( imagepath: "lib/icons/donut.png",),
  //pizza
  MyTab( imagepath: "lib/icons/pancakes.png",),

  //pancake
  MyTab( imagepath: "lib/icons/burger.png",),
  //burger
  MyTab( imagepath: "lib/icons/ice-cream.png",),
  //icecream
  MyTab( imagepath: "lib/icons/pizza.png",),
 ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:tabOpts.length,
      child: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Icon(Icons.menu,color:Colors.black,size:30),
          ),actions: [Padding(
            padding: const EdgeInsets.only(right:10.0),
            child: Icon(Icons.person,color:Colors.black,size:30),
          )],),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Column(children: [
              //text
              Text("Good Morning 😊"),
              SizedBox(height: 20,),
              //tabbar
              TabBar(tabs: tabOpts),
              Expanded(
                child: TabBarView(children: [
                  //donut
                  DonutTab(),
                  //pancake
                  PancakeTab(),
              
                  //Burger
                  BurgerTab(),
                  //Icecream
                  IcecreamTab(),
                  //pizza 
                  PizzaTab()
              
                ]),
              )
              
            ]),
          ),
      ),
    );
    
  }
}