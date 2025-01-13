import 'package:flutter/material.dart';

import 'util/my_tab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List<Widget> myTabs = [ const MyTab(iconPath:"donutImg/donut.png"),
                        const MyTab(iconPath:"donutImg/donut.png"),
                         const MyTab(iconPath:"donutImg/donut.png")];

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
                Text("i want to eat",
                    style: TextStyle(fontSize: 24),),
                    
                Text("  EAT",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),)
              ],
              ),),
              TabBar(tabs:myTabs)
          ],
        ),
      ),
    );
  }
}
