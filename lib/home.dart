import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarkari/productdetail.dart';

import 'account.dart';
import 'cart.dart';
import 'explore.dart';
import 'favourite.dart';
class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 33,left: 30),
            child: Column(

              children: [
                Image.asset('assets/carrot.png'),
                SizedBox(height: 9,),
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Row(

                    children: [
                      Icon(Icons.location_on),
                      SizedBox(width: 4,),
                      Text("Dhaka",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey.shade700),),
                       SizedBox(width: 6,),
                    Text("Banassre",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.grey.shade700),),
                      SizedBox(height: 12,),


                    ],
                  ),
                ),

                SizedBox(height: 22,),
                Container(
                  margin: const EdgeInsets.only(right: 28),
                  height: 50,
                  width: 370,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      color: Colors.grey.shade200
                  ),
                  child: TextField(
                    decoration:InputDecoration(
                      prefixIcon: Icon(Icons.search,color: Colors.black,),
                      hintText: 'Search Store',
                      border: InputBorder.none
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  margin: const EdgeInsets.only(right: 28),

                  height: 120,
                  width: 370,
                  child: Image.asset('assets/foode.jpg',fit: BoxFit.cover,),
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                SizedBox(height: 26,),
                Row(

                  children: [
                    Text("Exclusive Offer",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(width: 161,),
                    Text("See all",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.greenAccent.shade400),),

                  ],
                ),

                SizedBox(height: 27,),

                Container(
                  height: 190,
                  width: 600,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      offer('assets/apple.jpg','Apple','1 kg',' R 80'),
                      SizedBox(width: 7,),
                       offer('assets/banana.png','banana','7 kg',' R 40'),
                      SizedBox(width: 7,),
                       offer('assets/carrot.png','carrot','5 kg',' R 90'),
                      SizedBox(width: 7,),

                      offer('assets/mango.png','mango','9 kg',' R 30'),
                      SizedBox(width: 7,),
                      offer('assets/grape.png','grape','2 kg',' R 50'),
                      SizedBox(width: 7,),



                    ],
                  ),
                ),

                SizedBox(height: 25,),
                Row(

                  children: [
                    Text("Best Selling",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(width: 188,),
                    Text("See all",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.greenAccent.shade400),),

                  ],
                ),
                SizedBox(height: 27,),
                Container(
                  height: 190,
                  width: 600,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      offer('assets/apple.jpg','Apple','1 kg',' R 80'),
                      SizedBox(width: 7,),
                      offer('assets/banana.png','banana','7 kg',' R 40'),
                      SizedBox(width: 7,),
                      offer('assets/carrot.png','carrot','5 kg',' R 90'),
                      SizedBox(width: 7,),

                      offer('assets/mango.png','mango','9 kg',' R 30'),
                      SizedBox(width: 7,),
                      offer('assets/grape.png','grape','2 kg',' R 50'),
                      SizedBox(width: 7,),



                    ],
                  ),
                ),
                SizedBox(height: 27,),
                Row(

                  children: [
                    Text("Groceries",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
                    SizedBox(width: 188,),
                    Text("See all",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Colors.greenAccent.shade400),),

                  ],
                ),
                SizedBox(height: 10,),

                Container(
                  height: 120,
                  width: 600,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      groceries(0xFFF8BBD0,'assets/wheat-sack.png','Wheat'),
                      SizedBox(width: 20,),
                      groceries(0xFFFF8A80,'assets/rice-bowl.png','Wheat'),
                      SizedBox(width: 20,),
                      groceries(0xFFFFAB91,'assets/corn.png','Wheat'),
                      SizedBox(width: 20,),
                      groceries(0xFFFFF3E0,'assets/wheat-sack.png','Wheat'),
                      SizedBox(width: 20,),





                    ],
                  ),
                ),
                SizedBox(height: 30,),

                Container(
                  height: 190,
                  width: 600,

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      offer('assets/apple.jpg','Apple','1 kg',' R 80'),
                      SizedBox(width: 7,),
                      offer('assets/banana.png','banana','7 kg',' R 40'),
                      SizedBox(width: 7,),
                      offer('assets/carrot.png','carrot','5 kg',' R 90'),
                      SizedBox(width: 7,),

                      offer('assets/mango.png','mango','9 kg',' R 30'),
                      SizedBox(width: 7,),
                      offer('assets/grape.png','grape','2 kg',' R 50'),
                      SizedBox(width: 7,),



                    ],
                  ),
                ),

                SizedBox(height: 40,),




              ],
            ),

          ),


        ),



    );
  }

  Widget offer(String image,String fruit,String weight,String price){
    return Card(
      elevation: 1,
      child: Container(
        height: 190,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade200,),
          //color: Colors.redAccent
        ),

        child: Column(
          children: [
            Image.asset(image,height: 59,),
             SizedBox(height: 5,),
             Text(fruit),
             SizedBox(height: 3,),
            Text(weight),
            SizedBox(height: 40,),
            Row(
              children: [
                Text(price,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),),
                SizedBox(width: 52,),
                InkWell(
                  onTap: (){
                    setState(() {
                       Navigator.push(context, MaterialPageRoute(builder: (_)=>product()));
                    });
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent.shade400,
                      borderRadius: BorderRadius.circular(10),

                    ),
                    child: Icon(Icons.add,color: Colors.white,),
                  ),
                )
              ],
            )



          ],
        ),

      ),
    );
  }

  Widget groceries(int color,String images,String seed){
    return Container(
      height: 150,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(color)
      ),
      child: Container(
        margin: EdgeInsets.only(left: 39),
        child: Row(
          children: [
            Image.asset(images,height: 65,),
            SizedBox(width: 17,),
            Text(seed,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,color: Colors.grey.shade900),)
          ],
        ),
      ),
    );
  }



}
