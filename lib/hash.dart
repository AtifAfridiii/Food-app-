import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hash extends StatefulWidget {
  const Hash({super.key});

  @override
  State<Hash> createState() => _HashState();
}

class _HashState extends State<Hash> {
  @override
  Widget build(BuildContext context) {
     Size screenSize = MediaQuery.of(context).size;
double desiredHeight = screenSize.height ;
double desiredWidth = screenSize.width ;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Followed Tags',style: TextStyle(color: Colors.white,fontSize: 17),),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Center(child: Icon(Icons.tag,size: 101,color: Colors.white,)),
           Center(child: Text('You are not following any tag \n            Dont worry !',style: TextStyle(color: Colors.grey.shade500),),),
            Center(child: Text('We re sure you will find something for yourself',style: TextStyle(color: Colors.grey.shade500)),) ,
            SizedBox(height:desiredHeight*0.05 ,),
            Container(
              height: 51,
              width: desiredWidth*0.5,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(21),
              ),child: Center(child: Text('Explore tags',style: TextStyle(color: Colors.white),),),
            )
        ],
      ),
    );
  }
}