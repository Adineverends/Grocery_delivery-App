import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'welcomepage.dart';
class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>welcome())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent.shade200,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
               margin:const EdgeInsets.only(top: 1,left: 80),
          child: Row(

            children: [
              Image.asset('assets/carrot.png'),
              Padding(
                padding: const EdgeInsets.only(top: 355),
                child: Column(
                  children: [
                   Text("Tarkari",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
                    Text("o n l i n e   k i r a n a",style: TextStyle(fontSize: 15,color: Colors.white,),),


                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
