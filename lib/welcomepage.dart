import 'package:flutter/material.dart';
import 'package:tarkari/signup.dart';

class welcome extends StatefulWidget {
  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CoverImage(),
          Container(
            margin: EdgeInsets.only(top: 500,left: 77),
            child: Column(
              children: [
                Image.asset('assets/carrot.png'),
                SizedBox(height: 15,),
                Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
              Text("to our store",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.white),),
              SizedBox(height: 6,),
              Text("Get your groceries in as fast as one hour",style: TextStyle(fontSize: 12,color: Colors.white),),
                SizedBox(height: 29,),
                Container(
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(9)
                  ),
                  child: InkWell(
                      onTap: (){
                        setState(() {
                          Navigator.push(context,MaterialPageRoute(builder: (_)=>signup()));
                        });
                      },
                    child: Container(
                        alignment: Alignment.center,
                        child: Text("Get started",style: TextStyle(fontSize: 17,color: Colors.white),)),
                  ),
                ),

                SizedBox(height: 26,),



              ],
            ),
          )
        ],
      ),
    );


  }

  CoverImage() {
    return Container(
      width: 700,
      height: 800,
      child: Image.asset( 'assets/man.jpg',fit: BoxFit.cover,),
      );

  }
}
