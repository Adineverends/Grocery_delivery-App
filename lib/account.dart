import 'package:flutter/material.dart';

class account extends StatefulWidget {
  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20,right: 20,top: 60),
         child: Column(
           children: [
             Container(
               margin: EdgeInsets.only(left: 13),
               child: Row(
                 children: [
                   CircleAvatar(
                     backgroundImage:AssetImage('assets/man.jpg'),
                   ),
                   Container(
                     margin: EdgeInsets.only(left: 14),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [

                         Row(
                           children: [
                             Text("Afsar Hassen",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
                             SizedBox(width: 7,),
                             Icon(Icons.edit,color: Colors.greenAccent,size: 21,)
                           ],
                         ),
                         Text("afsar1234@gmail.com",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.grey.shade700),)
                       ],
                     ),
                   )
                 ],
               ),
             ),
             SizedBox(height: 20,),
             Divider(thickness: 1,),

             ListTile(
               title: Text('Orders',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               leading: Icon(Icons.shopping_bag_outlined,color: Colors.black,),
               trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
             ),

             Divider(thickness: 1,),

             ListTile(
               title: Text('My Details',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               leading: Icon(Icons.inbox_sharp,color: Colors.black,),
               trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
             ),

             Divider(thickness: 1,),

             ListTile(
               title: Text('Delivery Address',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               leading: Icon(Icons.location_on,color: Colors.black,),
               trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
             ),

             Divider(thickness: 1,),

             ListTile(
               title: Text('Payment Address',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               leading: Icon(Icons.payment,color: Colors.black,),
               trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
             ),

             Divider(thickness: 1,),

             ListTile(
               title: Text('Promo Code',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               leading: Icon(Icons.qr_code,color: Colors.black,),
               trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
             ),

             Divider(thickness: 1,),

             ListTile(
               title: Text('Notification',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               leading: Icon(Icons.notifications_none_rounded,color: Colors.black,),
               trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
             ),

             Divider(thickness: 1,),

             ListTile(
               title: Text('Help',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               leading: Icon(Icons.help_outline,color: Colors.black,),
               trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
             ),
             Divider(thickness: 1,),
             ListTile(
               title: Text('About',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black),),
               leading: Icon(Icons.account_box_outlined,color: Colors.black,),
               trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black,),
             ),
             Divider(thickness: 1,),

             SizedBox(height: 20,),
             Container(

               height: 65,
               width: 500,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(9),
                 color: Colors.grey.shade200
               ),
               child: Container(
                 margin: EdgeInsets.only(left: 28),
                 child: Row(
                   children: [
                     Icon(Icons.logout,color: Colors.greenAccent,),
                     SizedBox(width: 90,),
                     Text("Log Out",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.greenAccent),)
                   ],
                 ),
               ),
             ),
                ]
            )




         ),
      ),
    );


  }
}
