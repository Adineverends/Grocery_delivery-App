import 'package:flutter/material.dart';

import 'account.dart';
import 'cart.dart';
import 'explore.dart';
import 'favourite.dart';
import 'home.dart';
class bottombar extends StatefulWidget {
  @override
  _bottombarState createState() => _bottombarState();
}

class _bottombarState extends State<bottombar> {
  int currentIndex=0;

  final screens = [


    Container(
      child: home(),
    ),



    Container(
      child: Explore(),
    ),
    Container(
      child: cart(),
    ),
    Container(
      child: favourite(),
    ),
    Container(
      child: account(),
    ),


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(

        elevation: 0,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex=index),



        items: [

          BottomNavigationBarItem(icon:    Icon(Icons.home_outlined,color: Colors.black,),title: Text("Shop",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w600),)),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded,color: Colors.black,),title: Text("Explore",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w600),),),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.black),title: Text("Cart",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w600))),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: Colors.black),title: Text("Favourite",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w600))),
          BottomNavigationBarItem(icon: Icon(Icons.face,color: Colors.black),title: Text("Account",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w600))),

        ],


      ),
    );
  }
}
