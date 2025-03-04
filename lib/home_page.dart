import 'package:flutter/material.dart';

import 'tab/bergur_tab.dart';
import 'tab/donut_tab.dart';
import 'tab/pizza_tab.dart';
import 'util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<Widget> myTabs = [ const MyTab(iconPath:'assets/donut/donut.png'),
                        const MyTab(iconPath:'assets/burger/burger.png'),
                         const MyTab(iconPath:'assets/pizza/pizza.png')];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(padding: const EdgeInsets.only(left: 24),
                          child: IconButton(onPressed: (){}, 
                          icon: Icon(Icons.menu,color: Colors.grey[800],
                          size: 36,),),
          ),
          actions: [
      Padding(padding: const EdgeInsets.only(right: 24),
           child: IconButton(onPressed: (){}, icon: Icon(Icons.person,
           color: Colors.grey[800],
            size: 36,)),)
          ],
        ),
        body: Column(
          children: [
              const Padding(padding: EdgeInsets.all( 24),
              child: Row(
              children: [
                Text("i want to",
                    style: TextStyle(fontSize: 24),),
                    
                Text("  EAT",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)
              ],
              ),),
              TabBar(tabs:myTabs),
              const SizedBox(height: 4,),
              Expanded(
                child: TabBarView(children: [
                  DonutTab( ),
                  BurgerTab(),
                  PizzaTab()
                ]),
              )
          ],
        ),
      ),
    );
  }
}
