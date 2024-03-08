import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}
final controlller = TextEditingController();



class _searchState extends State<search> {
  void color(){
  
}
  @override
  Widget build(BuildContext context) {
    List fastfood=<Widget>[
         Image.asset('asset/1.png',height: 91,),
         Image.asset('asset/11.png',height: 91,),
         Image.asset('asset/3.png',height: 91,),
         Image.asset('asset/12.png',height: 91,),
         Image.asset('asset/13.png',height: 91,),
         Image.asset('asset/6.png',height: 91,),
         Image.asset('asset/7.png',height: 91,),
         Image.asset('asset/14.png',height: 91,),       
  ];
List food =[
  'Steak',
  'Taccos',
  'Spagetti',
  'Fries',
  'Fried chicken',
  'Burger',
  'Pizza',
  'Salad',
];
     Size screenSize = MediaQuery.of(context).size;
double desiredHeight = screenSize.height ;
double desiredWidth = screenSize.width ;
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: const Text('Search',style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          SizedBox(height: desiredHeight*0.01,),
          TextFormField(
            style: TextStyle(color: Colors.white),
            controller: controlller,
            keyboardType:TextInputType.name,
            decoration: InputDecoration(
             hintStyle: TextStyle(color: Colors.white),
             
              hintText: 'Search',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(11)),
      
              )            ),
          ),
          SizedBox(height: desiredHeight*0.03,),
         Row(
          children: [
            SizedBox(width: desiredWidth*0.03,),
            GestureDetector(
              onTap: (){
                
              },
              child: Container(
                height: desiredHeight*0.07,
                width: desiredWidth*0.4,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(51),
                ),
                child: Center(child: Text('Events',style: TextStyle(color: Colors.white,fontSize: 17),),),
              ),
            ),
            SizedBox(width: desiredWidth*0.05,),
             Container(
              height: desiredHeight*0.07,
              width: desiredWidth*0.4,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(51),
              ),
              child: Center(child: Text('Tags',style: TextStyle(color: Colors.white,fontSize: 17),),),
            ),
          ],
         ),
         SizedBox(height: desiredHeight*0.03),
        Expanded(
        child: GridView.builder(
          
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        crossAxisSpacing: desiredWidth*0.00,
        mainAxisSpacing: desiredHeight*0.04
               ), 
        itemBuilder:(context, index) {
         return Padding(
           padding: const EdgeInsets.symmetric(horizontal: 9),
           child: Container(
                        height: desiredHeight*0.2,
                        width: desiredWidth*0.2,
                        decoration: BoxDecoration(
             color: Colors.grey.shade700,
             borderRadius: BorderRadius.circular(11),
                      
                        ),
                        child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: desiredHeight*0.005,),
                               fastfood[index],
                               Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                   Container(
                                  
                                  height: 47,
                                  width: 51,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade900,
                                    borderRadius: BorderRadius.circular(11),
      
                                  ),
                                  child: Center(child: Text(' 2 \n March',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),),
                                ),
                                SizedBox(width: desiredWidth*0.03,),
                                Text(food[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)
                                ],
                               ),
                               SizedBox(height: desiredHeight*0.001,),
                               Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on_outlined,color: Colors.white,size: 9,),
                                  SizedBox(width: 9,),
                                  Text('Lorum ipsum',style: TextStyle(color: Colors.white,fontSize: 9),)
                                ],
                               )
                              ],
                            ),
                      ),
         ); 
        }, ),
      )
        ],
      ),
    );
  }
}
