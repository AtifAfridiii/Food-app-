
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pizza/dumy.dart';
// import 'package:pizza/home_screen.dart';
import 'package:pizza/search.dart';
import 'package:pizza/settting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
   int index = 0;
class _HomeState extends State<Home> with TickerProviderStateMixin {
  final Screens =[
        Home_Screen(),
        search(),
        settings(),
  ];
  @override
  Widget build(BuildContext context) {
    final item=<Widget>[
      Icon(Icons.home),
      Icon(Icons.search),
      Icon(Icons.settings),
      
  ];
 

    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Theme(
         data: Theme.of(context).copyWith(
          iconTheme: IconThemeData(color: Colors.white)
         ),
        child: CurvedNavigationBar(
          height: 61,            items: item,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.green.shade700,
          color: Colors.grey.shade500,
          index: index,
          animationCurve: Curves.easeInOut,
          animationDuration:const Duration(milliseconds: 301),
          onTap: (int index2){
            setState(() {
              index=index2;
            });
          },
          ),
      ),
      
           body: Screens[index]      
    );
  }
}
