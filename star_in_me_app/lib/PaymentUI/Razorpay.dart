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

  void openCheckOut()
  {
    double amount = 100.0*100;

    var options={
      "key" : "rzp_test_xzylRfGJkDmn7D",
      "amount" : "$amount",
      "name" : "The Star in Me",
      "description" : "Payment for the some random event",
      "prefill" : {
        "contact" : "2323232323",
        "email" : "shdjsdh@gmail.com",
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
    return SafeArea(
      child: Scaffold(
        body: ListView(children: [
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Text(
                  'Select number of Tickets',
                  textAlign: TextAlign.center,
                  style: (TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Text(
                    'Attendee 1',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '(Primary)',
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                  )
                ]),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile No.',
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Text(
                    'Attendee 2',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '(Secondary)',
                    style: TextStyle(fontSize: 25, color: Colors.grey),
                  )
                ]),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name',
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mobile No.',
                    ),
                  )),
              Divider(
                color: Colors.black38,

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6,top:8),
                    child: Column(
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(
                          'INR 1450',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold,fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MaterialButton(
                      height: 54,
                      minWidth: 150,
                      onPressed: () {
                        openCheckOut();

                      },
                      color: Colors.deepPurple[600],
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.deepPurple[600]),
                          borderRadius: BorderRadius.circular(6.0)),
                      child: Text(
                        "PROCEED",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white),

                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ]),
      ),

    );
  }
}
