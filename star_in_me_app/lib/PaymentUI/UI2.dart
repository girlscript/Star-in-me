import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UI2 extends StatefulWidget {
  @override
  _UI2State createState() => _UI2State();
}

class _UI2State extends State<UI2> {
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
                      onPressed: () {},
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
