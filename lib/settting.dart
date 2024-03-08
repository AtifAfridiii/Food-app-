import 'package:flutter/material.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';
import 'package:pizza/hash.dart';
import 'package:pizza/language.dart';
import 'package:pizza/login.dart';

class settings extends StatefulWidget {
  const settings({super.key});

  @override
  State<settings> createState() => _settingsState();
}
List name = [
    'Log in',
    'Notification',
    'Followed Tags',
    'Set Language',
];
List icons = <Widget>[
  Icon(Icons.login,color: Colors.white,),
   Icon(Icons.notifications,color: Colors.white,),
    Icon(Icons.tag_outlined,color: Colors.white,),
     Icon(Icons.circle,color: Colors.white,),

];


class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
double desiredHeight = screenSize.height ;
double desiredWidth = screenSize.width ;
    List trail = <Widget>[
 Icon(Icons.navigate_next_rounded,color: Colors.white,),
 LiteRollingSwitch(
  animationDuration: Duration(milliseconds: 301),
    //initial value
    value: true,
    textOn: 'ON',
    textOff: 'OFF',textOnColor: Colors.white,
    colorOn: Colors.greenAccent.shade700,
    colorOff: Colors.redAccent,
    iconOn: Icons.done,
    iconOff: Icons.circle,
    textSize: 11.0,
    width: 83,
    onChanged: (bool state) {
      
    }, onTap: (){
      
    }, onDoubleTap: (){
      
    }, onSwipe: (){

    },
),
Icon(Icons.navigate_next_rounded,color: Colors.white,),
Icon(Icons.navigate_next_rounded,color: Colors.white,),
];
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        
        title: const Text('Settings',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
      body: Column(
        children: [
          SizedBox(height:desiredHeight*0.05,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 5),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                },
                child: Card(
                  color: Colors.grey.shade500,
                  child: ListTile(
                  
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      maxRadius: 31,
                      child:icons[0] ,
                    ),
                  ),
                  title: Center(child:Text('${name[0]}',style: TextStyle(color: Colors.white),)  ,),
                  trailing: trail[0],
                  ),
                ),
              ),
            ),
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 5),
              child: GestureDetector(
                onTap: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (context) => login(),));
                },
                child: Card(
                  color: Colors.grey.shade500,
                  child: ListTile(
                  
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      maxRadius: 31,
                      child:icons[1] ,
                    ),
                  ),
                  title: Center(child:Text('${name[1]}',style: TextStyle(color: Colors.white),)  ,),
                  trailing: trail[1],
                  ),
                ),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 5),
              child: GestureDetector(
                onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => Hash(),));
                },
                child: Card(
                  color: Colors.grey.shade500,
                  child: ListTile(
                  
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      maxRadius: 31,
                      child:icons[2] ,
                    ),
                  ),
                  title: Center(child:Text('${name[2]}',style: TextStyle(color: Colors.white),)  ,),
                  trailing: trail[2],
                  ),
                ),
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11,vertical: 5),
              child: GestureDetector(
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Language(),));
                },
                child: Card(
                  color: Colors.grey.shade500,
                  child: ListTile(
                  
                  leading: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      maxRadius: 31,
                      child:icons[3] ,
                    ),
                  ),
                  title: Center(child:Text('${name[3]}',style: TextStyle(color: Colors.white),)  ,),
                  trailing: trail[3],
                  ),
                ),
              ),
            ),
         
           
          
        ],
      ),
    );
  }
}
