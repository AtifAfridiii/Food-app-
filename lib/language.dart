
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  int selectedIndex = 0;
   int selected= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text(
          'Set language',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'App language',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 50, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Radio(
                        value: index,
                        groupValue: selectedIndex,
                        onChanged: (value) {
                          setState(() {
                            selectedIndex = value as int;
                          });
                        },
                      ),
                      Text(
                        index == 0 ? 'English' : 'Serbian',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(width: 10),
                    ],
                  );
                },
              ),
            ),
            SizedBox(height: 11,),
           Align(
            alignment: Alignment.topLeft,
            
            child: const Text('Event Descriptions',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.white),)),
            SizedBox(height: 11,),
            Text('Note: Texts are automatically translated and may not be accurate.',style: TextStyle(color: Colors.grey.shade700),),
            SizedBox(height: 11,),
             Container(
              height: 50, // Adjust the height as needed
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Radio(
                        value: index,
                        groupValue: selected,
                        onChanged: (value) {
                          setState(() {
                            selected = value as int;
                          });
                        },
                      ),
                      Text(
                        index == 0 ? 'English' : 'Serbian',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(width: 10),
                    ],
                  );
                },
              ),
            ),
 
          ],
        ),
      ),
    );
  }
}
