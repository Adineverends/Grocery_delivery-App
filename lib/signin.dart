import 'package:flutter/material.dart';
import 'package:tarkari/bottombar.dart';

import 'home.dart';
class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            Container(
                margin: EdgeInsets.only(top: 80),
                child: Image.asset('assets/carrot.png')),
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.only(left: 30,top: 30,right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sign In",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25,color: Colors.black),),
                  SizedBox(height: 10,),
                  Text("Enter your credentials to continue",style: TextStyle(fontSize: 14,color: Colors.grey),),

                  SizedBox(height: 40,),
                  Text("Username",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey.shade600),),
                  TextField(),
                  SizedBox(height: 15,),
                  Text("Email",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey.shade600),),
                  TextField(

                  ),
                  SizedBox(height: 15,),
                  Text("Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey.shade600),),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon:Icon(Icons.remove_red_eye_outlined)
                    ),
                  ),

                  SizedBox(height: 17,),
                  Row(
                    children: [
                      Text("By continuing you agree to our",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),),
                      SizedBox(width: 5,),
                      InkWell(
                          onTap: (){
                            setState(() {

                            });
                          },
                          child: Text("Terms of Service",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.greenAccent),))

                    ],
                  ),
                  SizedBox(height: 7,),

                  Row(
                    children: [
                      Text("and ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey),),
                      SizedBox(width: 5,),
                      Text("Privacy Policy",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.greenAccent),)

                    ],
                  ),

                  SizedBox(height: 28,),

                  Container(
                    height: 55,
                    width: 365,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: InkWell(
                      onTap: (){
                        setState(() {
                           Navigator.push(context,MaterialPageRoute(builder: (_)=>bottombar()));
                        });
                      },
                      child: Container(
                          alignment: Alignment.center,
                          child: Text("Sign In",style: TextStyle(fontSize: 17,color: Colors.white),)),
                    ),
                  ),

                  SizedBox(height: 20,),








                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(left: 85),
              child: Row(
                children: [
                  Text("don't have an account ?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.black),),
                  SizedBox(width: 5,),
                  InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.pop(context);
                        });
                      },

                      child: Text("Sign Up",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Colors.greenAccent),))

                ],),
            ),
            SizedBox(height: 20,)
          ],
        ),
      ),

    );
  }
}
