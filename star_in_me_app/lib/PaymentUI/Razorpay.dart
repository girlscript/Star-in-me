import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RPay extends StatefulWidget {
  @override
  _RPayState createState() => _RPayState();
}

class _RPayState extends State<RPay> {

  Razorpay razorpay;
  TextEditingController textEditingController = new TextEditingController();

  @override
  void initState()
  {
    super.initState();
    razorpay= new Razorpay();
    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlerPaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlerPaymentFailure);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handlerExternalWallet);
  }

  @override
  void dispose()
  {
    super.dispose();
    razorpay.clear();
  }
  //TODO Make the amount variable dynamic
  void openCheckOut()
  {
    var options={
      "key" : "rzp_test_xzylRfGJkDmn7D",
      "amount" : num.parse(textEditingController.text)*100,
      "name" : "Sample App",
      "description" : "Payment for the some random product",
      "prefill" : {
        "contact" : "2323232323",
        "email" : "shdjsdh@gmail.com"
      },
      "external" : {
        "wallets" : ["paytm"]
      }
    };

    try{
      razorpay.open(options);

    }catch(e){
      print(e.toString());
    }
  }
  void handlerPaymentSuccess()
  {
    print("Payment successful!");
  }

  void handlerPaymentFailure()
  {
    print("Payment failed!");
  }

  void handlerExternalWallet()
  {
    print("External Wallet'");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Gateway",
          style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: textEditingController,
              decoration: InputDecoration(
                  hintText: "Amount to pay"
              ),
            ),
            SizedBox(height: 12,),
            RaisedButton(
              highlightElevation: 20,
              color: Colors.deepPurple,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.deepPurple[600]),
                  borderRadius: BorderRadius.circular(6.0)
              ),
              child: Text("Pay Now", style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
              ),),
              onPressed: (){
                openCheckOut();
              },
            )
          ],
        ),
      ),
    );
  }
}
