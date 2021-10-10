import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50,left: 20,right: 20),
        child: Column(

          children: [
            Text("My Cart",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w600,color: Colors.black),),
               SizedBox(height: 25,),
            Divider(thickness: 1,),
            Container(
              height: 500,
            width: 500,
            child: ListView(
              children: [
                product('assets/carrot.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/banana.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/corn.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/grape.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/mango.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/orange.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/rice-bowl.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/wheat-sack.png','Bell Pepper Red','1 Kg, Price'),
                product('assets/carrot.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/banana.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/corn.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/grape.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/mango.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/orange.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/rice-bowl.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/wheat-sack.png','Bell Pepper Red','1 Kg, Price'),
                product('assets/carrot.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/banana.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/corn.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/grape.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/mango.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/orange.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/rice-bowl.png','Bell Pepper Red','1 Kg, Price'),
                Divider(thickness: 2,),
                product('assets/wheat-sack.png','Bell Pepper Red','1 Kg, Price'),





              ],
            ),


            ),
            SizedBox(height: 21,),
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
                child: Text("Go to Checkout",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w400,color: Colors.white),),
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
              child: Image.asset(image,height: 80,),

          ),

          Expanded(
            flex: 5,
            child: Column(
              children: [
                Text(name,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.black),),
                SizedBox(height: 5,),
                Text(weight,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.grey),),
                SizedBox(height: 25,),
                Row(
                  children: [
                    SizedBox(width: 40,),
                    Text("-",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w400,color: Colors.grey),),
                    SizedBox(width: 20,),
                    Text("1",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.black),),
                    SizedBox(width: 20,),
                    InkWell(

                      onTap: (){
                        setState(() {

                        });
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color:Colors.grey,width: 1)
                        ),
                        child: Icon(Icons.add,color: Colors.greenAccent.shade400,),
                      ),
                    )
                  ],
                )
              ],
            )

          ),

          Expanded(
            flex: 2,
            child: Column(
              children: [
                Icon(Icons.close,color: Colors.grey,),
                SizedBox(height: 50,),
                Text("R 5.00",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,color: Colors.black),)

              ],
            )

          ),



        ],
      )
    );
  }
}

