import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
class product extends StatefulWidget {
  @override
  _productState createState() => _productState();
}

class _productState extends State<product> {

late Razorpay _razorpay;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeRazorPay();


  }

  void initializeRazorPay(){
    _razorpay=Razorpay();
    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
  }

  void launchRazorPay(){

    var options = {
      'key': 'rzp_test_mSK0im52doZXlA',
      'amount': 2000,
      'name': 'Acme Corp.',
      'description': 'Fine T-Shirt',
      'prefill': {'contact': '8225021868', 'email': 'asghriop@gmail.com'},
      'external': {
        'wallets': ['paytm']
      }
    };



    try{
         _razorpay.open(options);
    }
    catch(e){
      print("Error: $e");
    }
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade200,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },icon: Icon(Icons.arrow_back_ios),color: Colors.black,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.logout,color: Colors.black,))
        ],

      ),
      body: Column(

        children: [
          Stack(
            children: [
              Container(
                height: 250,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(37))
                ),
              ),
              Positioned(
               left: 105,
                  top: 20,
                  child: Image.asset('assets/orange.png',height: 180,)
              )

            ],
          ),
           SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 400,
              width: 500,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Natural Red Apple",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 19),),
                      Icon(Icons.favorite_border)
                    ],
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 288),
                      child: Text("1kg,Price")),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                    Text("-",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey,fontSize: 44),),
                      SizedBox(width: 17,),
                      Container(
                        alignment: Alignment.center,
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          border: Border.all(color:Colors.grey,width: 1),
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: Text("1",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.black,fontSize: 19),),
                      ),
                      SizedBox(width: 17,),
                      Text("+",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.greenAccent,fontSize: 34),),
                      SizedBox(width: 187,),
                      Text("R 4.99",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black,fontSize: 21),),

                    ],
                  ),
                  SizedBox(height: 8,),
                  Divider(thickness: 1,color: Colors.grey.shade400,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Product Detail",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 16),),
                      Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,),

                    ],
                  ),
                  SizedBox(height: 8,),
                  Text("A ListTile is generally what you use to populate a ListView in Flutter. In this post I will cover all of the parameters with visual examples to make it clear. Scroll down to the end to see the code ",
                    style: TextStyle(fontWeight: FontWeight.w400,color: Colors.grey.shade500,fontSize: 15),

                  ),
                  SizedBox(height: 10,),
                  Divider(thickness: 1,color: Colors.grey.shade400,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Review",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 16),),
                      SizedBox(width: 160,),
                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                      Icon(Icons.star,color: Colors.yellow,size: 20,),
                      Icon(Icons.star,color: Colors.yellow,size: 20,),


                    ],
                  ),
                  SizedBox(height: 30,),

                  InkWell(

                    onTap: (){
                      setState(() {
                       showModalBottomSheet<dynamic>(

                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.only(
                             topRight: Radius.circular(28),
                              topLeft: Radius.circular(28),

                           )
                         ),


                           isScrollControlled: true,

                           context: context,

                           builder:(context){
                           return Container(



                             margin: EdgeInsets.only(top: 20,left: 15,right: 15),
                             child: Column(
                               mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Checkout",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black,fontSize: 23),),
                                       InkWell(
                                           onTap: (){
                                             setState(() {
                                               Navigator.pop(context);
                                             });
                                           },
                                           child: Icon(Icons.close,color: Colors.black,size: 27,))
                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Divider(color: Colors.grey.shade300,thickness: 1,),
                                  SizedBox(height: 11,),

                                  Row(

                                    children: [
                                      Text("Delivery",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey.shade600,fontSize: 16),),
                                      SizedBox(width: 180,),
                                      Text("Select Method",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 16),),
                                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 19,)

                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Divider(color: Colors.grey.shade300,thickness: 1,),
                                  SizedBox(height: 11,),

                                  Row(

                                    children: [
                                      Text("Payment",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey.shade600,fontSize: 16),),
                                      SizedBox(width: 247,),
                                      Icon(Icons.credit_card,color: Colors.black,),
                                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 19,)

                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Divider(color: Colors.grey.shade300,thickness: 1,),
                                  SizedBox(height: 11,),

                                  Row(

                                    children: [
                                      Text("Promo Code",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey.shade600,fontSize: 16),),
                                      SizedBox(width: 147,),
                                      Text("Pick discount",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 16),),
                                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 19,)

                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Divider(color: Colors.grey.shade300,thickness: 1,),
                                  SizedBox(height: 11,),

                                  Row(

                                    children: [
                                      Text("Toatal cost",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey.shade600,fontSize: 16),),
                                      SizedBox(width: 192,),
                                      Text("S 13.97",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.black,fontSize: 16),),
                                      Icon(Icons.arrow_forward_ios_outlined,color: Colors.black,size: 19,)

                                    ],
                                  ),
                                  SizedBox(height: 15,),
                                  Divider(color: Colors.grey.shade300,thickness: 1,),

                                  SizedBox(height: 15,),
                                  Text("By placing an order you agree to our Terms and Condition",style: TextStyle(fontWeight: FontWeight.w300,color: Colors.grey.shade600,fontSize: 15),),
                                  SizedBox(height: 15,),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        launchRazorPay();
                                      });
                                    },

                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 60,
                                      width: 300,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent.shade400,
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                        child:Text("Place Order",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 17),),
                                    ),
                                  ),
                                  SizedBox(height: 20,),


                                ],


                             ),
                           );
                           }





                       );
                      });
                    },


                    child: Container(
                      alignment: Alignment.center,
                      height: 55,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child:Text("Buy Your product",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 17),)
                    ),
                  )


                ],
              ),
            )

        ],
      ),
    );
  }

void _handlePaymentSuccess(PaymentSuccessResponse response) {
   print("Payment Sucessful");
   print("${response.orderId}\n${response.paymentId} \n${response.signature}");
}

void _handlePaymentError(PaymentFailureResponse response) {
print("Payment Failed");
print("${response.code} \n${response.message}");
}

void _handleExternalWallet(ExternalWalletResponse response) {
    print("Payment Failed");


}
}

