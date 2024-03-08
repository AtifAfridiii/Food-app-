import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}
 bool istoggle=false;
TextEditingController _email = TextEditingController();
TextEditingController _passoward = TextEditingController();
class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
  Size screenSize = MediaQuery.of(context).size;
  double desiredHeight = screenSize.height ;
  double desiredWidth = screenSize.width ;
 
    return Scaffold(
      
      backgroundColor: Colors.black87,
      appBar: PreferredSize(
        preferredSize: Size(desiredWidth*0.1, desiredHeight*0.1),
        child: AppBar(
          
          automaticallyImplyLeading: false,
          title: Text('Login',style: TextStyle(color: Colors.white,fontSize: 19),),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: desiredHeight*0.03,),
            Padding(
              
              padding: EdgeInsets.all(11),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _email,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.grey.shade700),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
              
                  )
                ),
              ),
            ),
            Padding(
              
              padding: EdgeInsets.all(11),
              child: TextFormField(
                obscureText: istoggle,
                keyboardType: TextInputType.visiblePassword,
                controller: _passoward,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Passoward',
                  hintStyle: TextStyle(color: Colors.grey.shade700),
                  suffixIcon: GestureDetector(
                    onTap: (){
setState(() {
  istoggle=!istoggle;
});
                    },
                    child: Icon(istoggle? Icons.visibility_off_outlined: Icons.visibility_outlined )),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
              
                  )
                ),
              ),
            ),
            SizedBox(height: desiredHeight*0.05,),
            Container(
              height: 51,
              width: desiredWidth*0.9,
              decoration: BoxDecoration(
                color: Colors.grey.shade900,
                borderRadius: BorderRadius.circular(21),
              ),child: Center(child: Text('Log in',style: TextStyle(color: Colors.white),),),
            ),
            SizedBox(height: desiredHeight*0.1,),
           
           Row(
            
            children: [
              Padding(
                padding: EdgeInsets.only(left: 31),
                child: Container(
                height: 71,
                width: desiredWidth*0.4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(21),
                ),child: Center(child: Icon(Icons.facebook_outlined,color: Colors.white,size: 31),),
                          ),
              ),
              SizedBox(width: desiredWidth*0.03,),
              Container(
                height: 71,
                width: desiredWidth*0.4,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(21),
                ),child: Center(child: Icon(Icons.g_mobiledata_outlined,color: Colors.white,size: 31),),
                          ),
                         
            ],
           ),
           SizedBox(height: desiredHeight*0.07,),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               Text("Don't Have an account? ",style: TextStyle(color: Colors.grey.shade700),),
                Text("Register",style: TextStyle(color: Colors.blueAccent),),
            ],
           )
          ],
        ),
      ),
    );
  }
}