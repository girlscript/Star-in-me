import 'package:flutter/material.dart';

class PaymentUI3 extends StatefulWidget {
  @override
  _PaymentUI3State createState() => _PaymentUI3State();
}

class _PaymentUI3State extends State<PaymentUI3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'Payment Confirmation',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  border: Border.all(color: Colors.grey),

                ),
                child: Column(
                  children: [
                    Container(
                      color: Colors.black12,
                      constraints: BoxConstraints(
                          minHeight: 40
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('ORDER SUMMARY', style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)
                          ),
                          Text('Order id:iu9987',
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Text(
                                'Event Name',
                                style: (TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Text(
                                'ADVANCED LEVEL',
                                style: (TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                )),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.alarm,
                                  )),
                              Text('5 pm-7 pm',
                                style: TextStyle(
                                    fontSize: 18
                                ),)
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.insert_invitation,
                                  )),
                              Text('10 October 2020',
                                style: TextStyle(
                                    fontSize: 18
                                ),)
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.location_on,
                                  )),
                              Text('DBS, Hyderabad',
                                style: TextStyle(
                                    fontSize: 18
                                ),)
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                  icon: Icon(
                                    Icons.location_on,
                                  )),
                              Text('INR 1450',
                                style: TextStyle(
                                    fontSize: 18
                                ),)
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Attendee:',
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Full Name',style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 16),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '[Payment done through Debit Card]', style: TextStyle(color: Colors.black54, fontSize: 14),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Email confirmation is sent on:', style: TextStyle(color: Colors.black54, fontSize: 14),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1234@gmail.com', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ),
                        ],
                      ),

                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.black54,
            ),
            SizedBox(height: 20),
            Center(
              child: MaterialButton(
                height: 54,
                minWidth: 150,
                onPressed: () {

                },
                color: Colors.deepPurple[600],
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.deepPurple[600]),
                    borderRadius: BorderRadius.circular(6.0)),
                child: Text(
                  "BACK TO EVENTS",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
