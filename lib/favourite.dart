import 'package:flutter/material.dart';
class favourite extends StatefulWidget {
  @override
  _favouriteState createState() => _favouriteState();
}

class _favouriteState extends State<favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(

          children: [
            Text("Favoruite",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: Colors.black),),
            SizedBox(height: 25,),
            Divider(thickness: 1,),
            Container(
              height: 500,
              width: 500,
              child: ListView(
                children: [
                  product('assets/carrot.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/banana.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/corn.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/grape.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/mango.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/orange.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/rice-bowl.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/wheat-sack.png','Bell Pepper Red','1 Kg, Price'),
                  product('assets/carrot.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/banana.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/corn.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/grape.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/mango.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/orange.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/rice-bowl.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/wheat-sack.png','Bell Pepper Red','1 Kg, Price'),
                  product('assets/carrot.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/banana.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/corn.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/grape.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/mango.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/orange.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/rice-bowl.png','Bell Pepper Red','1 Kg, Price'),
                  Divider(thickness: 1,),
                  product('assets/wheat-sack.png','Bell Pepper Red','1 Kg, Price'),





                ],
              ),


            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                setState(() {

                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 57,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11),
                  color: Colors.green.shade400,

                ),
                child: Text("Add All to Cart",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400,color: Colors.white),),
              ),
            )




          ],
        ),

      ),



    );
  }
  Widget product(String image,String name,String weight){
    return Container(
        height: 100,
        width: 400,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset(image,height: 50,),

            ),

            Expanded(
                flex: 5,
                child: Column(
                  children: [
                    SizedBox(height:34 ,),
                    Text(name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.black),),
                    SizedBox(height: 5,),
                    Text(weight,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.grey),),
                    SizedBox(height: 25,),

                  ],
                )

            ),

            Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Text("R 5.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.black),),
                    SizedBox(width: 1,),
                    Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 20,)
                  ],
                ),

            ),



          ],
        )
    );
  }
}

