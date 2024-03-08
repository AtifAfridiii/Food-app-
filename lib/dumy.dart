// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

List <String> Option =['Option 1' , 'Option 2' , 'Option 3' ,'Option 4', 'Option 5'];

class _Home_ScreenState extends State<Home_Screen> with SingleTickerProviderStateMixin{
   TabController? _tabController;

@override
  void initState() {
    _tabController =TabController(length: 3, vsync: this);
    super.initState();
  }

@override
  void dispose() {
    _tabController!.dispose();
    
    super.dispose();
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
int selectedValue = 0;
    return Scaffold(
     backgroundColor: Colors.black87,
       appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Events',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(width:desiredWidth*0.5 ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications_none, color: Colors.white),
              )
            ],
          ),
                ),
      
     body:  Column(
        children: [
      Padding(
        padding:const EdgeInsets.symmetric(horizontal: 11,vertical: 11),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          height: 45,
          decoration: BoxDecoration(
                   color: const Color(0xff393939),
                   borderRadius: BorderRadius.circular(21),
                 //  border: Border.all(),
          ),
          child:TabBar(
            controller: _tabController,
            unselectedLabelColor: Colors.white,
            dividerColor:const Color(0xff393939),
            indicatorSize: TabBarIndicatorSize.tab,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: Colors.deepOrange,

            ),
           
            tabs: const [
               Text('Reservations',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.white)),
               Text('Filters',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.white),),
                Icon(Icons.calendar_month,color: Colors.white,),
               
            ]),

        ),
         ), 
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          
                          children: [
                            Text('979 Events', style: TextStyle(color: Colors.white, fontSize: 17)),
                            Spacer(),
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade700,
                              radius: 25,
                              child: Icon(Icons.window_rounded, color: Colors.white),
                            ),
                            SizedBox(width: desiredWidth*0.03),
                            CircleAvatar(
                              backgroundColor: Colors.grey.shade700,
                              radius: 25,
                              child: Icon(Icons.location_on_outlined, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                     
 
         Expanded(
          child:TabBarView(
            controller: _tabController,
            children: [
              
               SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(16),
                  
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                                           GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                        ),
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Container(
                            height:desiredHeight*0.4,
                            width: desiredWidth*0.1,
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
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
   
            GestureDetector(
                onTap: (){
                showModalBottomSheet(context: context, backgroundColor: Colors.grey.shade900,builder: (BuildContext context) {
                  
                  return Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: SizedBox(
                      height: 401,
                      width: 401,
                        child: Center(child: Column(
                          children: [
                            ListTile(leading: Text('Filters',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                            trailing: IconButton(onPressed: (){
                                  Navigator.pop(context);
                            }, icon: Icon(Icons.close_rounded,color: Colors.white,)),
                            ),
                    
                            SizedBox(height: desiredHeight*0.01,),
                           
                            Align(
                              alignment: Alignment.topLeft,
                              
                              child: Text('Tags',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.start,)),
                             SizedBox(height: desiredHeight*0.01,),
                    
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: desiredWidth*0.1,),
                                Container(
                                  height: desiredHeight*0.05,
                                  width: desiredWidth*0.3,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                        borderRadius: BorderRadius.circular(31),
                    
                                  ),
                                  child: Center(child: Text('Rock n Roll',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                                ),
                                SizedBox(width: desiredWidth*0.01,),
                                                                 Container(
                                  height: desiredHeight*0.05,
                                  width: desiredWidth*0.3,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                        borderRadius: BorderRadius.circular(31),
                    
                                  ),
                                  child: Center(child: Text('Rave',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                                )
                              ],
                            ),
                            SizedBox(height: desiredHeight*0.01,),
                              Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: desiredWidth*0.1,),
                                Container(
                                  height: desiredHeight*0.05,
                                  width: desiredWidth*0.3,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                        borderRadius: BorderRadius.circular(31),
                    
                                  ),
                                  child: Center(child: Text('Domaci   Pop',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                                ),
                                SizedBox(width: desiredWidth*0.01,),
                                                                 Container(
                                  height: desiredHeight*0.05,
                                  width: desiredWidth*0.3,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                        borderRadius: BorderRadius.circular(31),
                    
                                  ),
                                  child: Center(child: Text('House',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),),
                                ),
                                SizedBox(width: desiredWidth*0.01,),
                                                                 Container(
                                  height: desiredHeight*0.05,
                                  width: desiredWidth*0.2,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                        borderRadius: BorderRadius.circular(31),
                    
                                  ),
                                  child: Center(child:Icon(Icons.add,color: Colors.white),),
                                )
                              ],
                            ),
                             SizedBox(height: desiredHeight*0.03,),
                           
                            Align(
                              alignment: Alignment.topLeft,
                              
                              child: Text('Categories',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.start,)),
                             SizedBox(height: desiredHeight*0.01,),
                               Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: desiredWidth*0.1,),
                                Container(
                                  height: desiredHeight*0.05,
                                  width: desiredWidth*0.2,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                        borderRadius: BorderRadius.circular(31),
                    
                                  ),
                                  child: Center(child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.colorize_rounded,color: Colors.white,),
                                      SizedBox(width: desiredWidth*0.02,),
                                      Text('Art',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                    ],
                                  ),),
                                ),
                                SizedBox(width: desiredWidth*0.01,),
                                                                 Container(
                                  height: desiredHeight*0.05,
                                  width: desiredWidth*0.3,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                        borderRadius: BorderRadius.circular(31),
                    
                                  ),
                                  child:Center(child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.run_circle_outlined,color: Colors.white,),
                                      SizedBox(width: desiredWidth*0.02,),
                                      Text('Activities',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                    ],
                                  ),),
                                ),
                                SizedBox(width: desiredWidth*0.01,),
                                                                
                              ],
                            ),
                            SizedBox(height: desiredHeight*0.01,),
                            Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                              SizedBox(width: desiredWidth*0.1,),
                              Container(
                                  height: desiredHeight*0.05,
                                  width: desiredWidth*0.3,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade700,
                                        borderRadius: BorderRadius.circular(31),
                    
                                  ),
                                  child:Center(child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.music_note_outlined,color: Colors.white,),
                                      SizedBox(width: desiredWidth*0.02,),
                                      Text('Music',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                                    ],
                                  ),),
                                )
                              ],
                            )
                    
                      
                          ],
                        )),
                    ),
                  );
                },);
                },
               
                    child: Container(
                      height: 51,
                      width: double.infinity,
                      decoration: BoxDecoration(
                     
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Show Filters',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                          SizedBox(width: desiredWidth*0.01),
                          Icon(Icons.linear_scale_rounded, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
            GestureDetector(
                    onTap: (){
                      showModalBottomSheet(context: context,backgroundColor: Colors.grey.shade900, builder: (context) {
                        return SizedBox(
                          height: 601,
                          width: 401,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                               ListTile(leading:  Text("Date",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),),
                          trailing: IconButton(onPressed: (){
                                Navigator.pop(context);
                          }, icon: Icon(Icons.close_rounded,color: Colors.white,)),
                          ),
  
                              SizedBox(height: desiredHeight*0.03,),
                           RadioListTile(value: 0, groupValue:selectedValue ,
                            onChanged: (value){
                             setState(() {
                               selectedValue=value as int;
                             });
                                                       
                                                       },
                                                       title: Text('Starting soon',style: TextStyle(color: Colors.white),),
                                                       ),
                                                       RadioListTile(
                                       title: Text('Today',style: TextStyle(color: Colors.white),),
                                       value: 1,
                                       groupValue: selectedValue,
                                       onChanged: (value) {
                                         setState(() {
                                           selectedValue = value as int;
                                         });
                                       },
                                     
                                     )  ,   
                                     RadioListTile(
                                       title: Text('Friday',style: TextStyle(color: Colors.white),),
                                       value: 2,
                                       groupValue: selectedValue,
                                       onChanged: (value) {
                                         setState(() {
                                           selectedValue = value as int;
                                         });
                                       },
                                     
                                     )  ,   
                                     RadioListTile(
                                       title: Text('Saturday',style: TextStyle(color: Colors.white),),
                                       value: 3,
                                       groupValue: selectedValue,
                                       onChanged: (value) {
                                         setState(() {
                                           selectedValue = value as int;
                                         });
                                       },
                                     
                                     ) ,
                                     RadioListTile(
                                       title: Text('Choose a day',style: TextStyle(color: Colors.white),),
                                       value: 4,
                                       groupValue: selectedValue,
                                       onChanged: (value) {
                                         setState(() {
                                           selectedValue = value as int;
                                         });
                                       },
                                     
                                     )  ,
                                     SizedBox(height: desiredHeight*0.03,),
                                     Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                       const Text('Clear Filter',style: TextStyle(color: Colors.blueAccent,fontSize: 15),),
                                      ],
                                     )         
                            ],
                          ),
                        );
                      },);
                    },
                    child: Container(
                      height: 51,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(29),
                      ),
                      child: Center(child: Text(' Show more...',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
   
      
            ],
          
          ),
   
         )
        ]
     )    
    );
  }
}