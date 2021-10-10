import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  @override
  _ExploreState createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

  final List<String> listItem=[
  'assets/apple.jpg'
     'assets/banana.png'
     'assets/carrot.png'
     'assets/corn.png'
     'assets/foode.jpg'
     'assets/grape.png'
     'assets/mango.png'
     'assets/orange.png'
     'assets/rice-bowl.png'
     'assets/wheat-sack.png'


  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.only(left: 20,top: 56,right: 0),
        child: Column(
          children: [

            Text("Find Products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.grey.shade800),),
            SizedBox(height: 25,),
            Container(
              margin: const EdgeInsets.only(right: 28),
              height: 50,
              width: 390,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
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
            SizedBox(height: 24,),

           SingleChildScrollView(
             child: Container(
               margin: EdgeInsets.only(right: 30),
               height: 520,
               width: 500,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(9)
               ),
               child: GridView.count(
                   crossAxisCount: 2,
                   crossAxisSpacing: 18,
                 mainAxisSpacing: 15,
                 children: [
                   gridview(0xFFF8BBD0, 'assets/banana.png', "Apple"),
                   gridview(0xFFFFCDD2, 'assets/carrot.png', "Apple"),
                   gridview(0xFFFFCCBC, 'assets/corn.png', "Apple"),
                   gridview(0xFFFFCC80, 'assets/grape.png', "Apple"),
                   gridview(0xFFF1F8E9, 'assets/mango.png', "Apple"),
                   gridview(0xFF80CBC4, 'assets/rice-bowl.png', "Apple"),
                   gridview(0xFF80DEEA, 'assets/wheat-sack.png', "Apple"),

                   gridview(0xFFF8BBD0, 'assets/banana.png', "Apple"),
                   gridview(0xFFFFCDD2, 'assets/carrot.png', "Apple"),
                   gridview(0xFFFFCCBC, 'assets/corn.png', "Apple"),
                   gridview(0xFFFFCC80, 'assets/grape.png', "Apple"),
                   gridview(0xFFF1F8E9, 'assets/mango.png', "Apple"),
                   gridview(0xFF80CBC4, 'assets/rice-bowl.png', "Apple"),
                   gridview(0xFF80DEEA, 'assets/wheat-sack.png', "Apple"),

                   gridview(0xFFF8BBD0, 'assets/banana.png', "Apple"),
                   gridview(0xFFFFCDD2, 'assets/carrot.png', "Apple"),
                   gridview(0xFFFFCCBC, 'assets/corn.png', "Apple"),
                   gridview(0xFFFFCC80, 'assets/grape.png', "Apple"),
                   gridview(0xFFF1F8E9, 'assets/mango.png', "Apple"),
                   gridview(0xFF80CBC4, 'assets/rice-bowl.png', "Apple"),
                   gridview(0xFF80DEEA, 'assets/wheat-sack.png', "Apple"),

                   gridview(0xFFF8BBD0, 'assets/banana.png', "Apple"),
                   gridview(0xFFFFCDD2, 'assets/carrot.png', "Apple"),
                   gridview(0xFFFFCCBC, 'assets/corn.png', "Apple"),
                   gridview(0xFFFFCC80, 'assets/grape.png', "Apple"),
                   gridview(0xFFF1F8E9, 'assets/mango.png', "Apple"),
                   gridview(0xFF80CBC4, 'assets/rice-bowl.png', "Apple"),
                   gridview(0xFF80DEEA, 'assets/wheat-sack.png', "Apple"),

                   gridview(0xFFF8BBD0, 'assets/banana.png', "Apple"),
                   gridview(0xFFFFCDD2, 'assets/carrot.png', "Apple"),
                   gridview(0xFFFFCCBC, 'assets/corn.png', "Apple"),
                   gridview(0xFFFFCC80, 'assets/grape.png', "Apple"),
                   gridview(0xFFF1F8E9, 'assets/mango.png', "Apple"),
                   gridview(0xFF80CBC4, 'assets/rice-bowl.png', "Apple"),
                   gridview(0xFF80DEEA, 'assets/wheat-sack.png', "Apple"),

                   gridview(0xFFF8BBD0, 'assets/banana.png', "Apple"),
                   gridview(0xFFFFCDD2, 'assets/carrot.png', "Apple"),
                   gridview(0xFFFFCCBC, 'assets/corn.png', "Apple"),
                   gridview(0xFFFFCC80, 'assets/grape.png', "Apple"),
                   gridview(0xFFF1F8E9, 'assets/mango.png', "Apple"),
                   gridview(0xFF80CBC4, 'assets/rice-bowl.png', "Apple"),
                   gridview(0xFF80DEEA, 'assets/wheat-sack.png', "Apple"),








                 ]

               )
             ),
           )
           ]
        ),


      ),


    );
  }
  Widget gridview(int color,String image,String text){
    return Container(
      decoration: BoxDecoration(
        color: Color(color),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color:Color(color),width: 1)
      ),
      child: Column(
  children: [
     SizedBox(height: 20,),
      Image.asset(image,height: 69,),
      SizedBox(height: 23,),
      Text(text,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600),)
  ],
      ),
    );
  }
}
