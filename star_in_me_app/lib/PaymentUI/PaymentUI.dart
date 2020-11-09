import 'package:flutter/material.dart';
import 'package:flutter_counter/flutter_counter.dart';
import 'package:flutter/cupertino.dart';

class CounterView extends StatefulWidget {
  final int initNumber;
  final Function(int) counterCallback;
  CounterView({this.initNumber, this.counterCallback});
  @override
  _CounterViewState createState() => _CounterViewState();
}

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}



class _CounterViewState extends State<CounterView> {
  int _currentCount;
  Function _counterCallback;
  @override
  void initState() {
    _currentCount = widget.initNumber ?? 1;
    _counterCallback = widget.counterCallback ?? (int number) {};
    super.initState();
  }

  Item selectedTime;
  List<Item> time = <Item>[
    const Item(
        'Time 1',
        Icon(
            Icons.alarm,
            color: Colors.black
        )),
    const Item(
        'Time 2',
        Icon(
            Icons.alarm,
            color: Colors.black
        )),
    const Item(
        'Time 3',
        Icon(
            Icons.alarm,
            color: Colors.black
        )),
    const Item(
        'Time 4',
        Icon(
            Icons.alarm,
            color: Colors.black
        )),
  ];

  Item selectedDate;
  List<Item> date = <Item>[
    const Item(
        'Date 1',
        Icon(
            Icons.insert_invitation,
            color: Colors.black
        )),
    const Item(
        'Date 2',
        Icon(
            Icons.insert_invitation,
            color: Colors.black
        )),
    const Item(
        'Date 3',
        Icon(
            Icons.insert_invitation,
            color: Colors.black
        )),
    const Item(
        'Date 4',
        Icon(
            Icons.insert_invitation,
            color: Colors.black
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          toolbarHeight: 50,
          title: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Row(children: [
              IconButton(
                alignment: Alignment.topLeft,
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              Text(
                'Registration Details',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ]),
          ),
        ),
        body: Column(children: [
          SizedBox(
            height: 50,
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
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
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
                      fontSize: 15,
                    )),
                  ),
                ),
              ),
              Divider(
                color: Colors.black38,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                                Icons.access_alarm
                            ),
                          ),
                          Text('Select Time', style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                          ),
                        ],
                      ),
                      value: selectedTime,
                      onChanged: (Item Value) {
                        setState(() {
                          selectedTime = Value;
                        });
                      },
                      items: time.map((Item user) {
                        return DropdownMenuItem<Item>(
                          value: user,
                          child: Row(
                            children: <Widget>[
                              user.icon,
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                user.name,
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black38,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      hint: Row(
                        children: [
                          IconButton(
                            icon: Icon(
                                Icons.insert_invitation
                            ),
                          ),
                          Text('Select Date', style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          ),
                          ),
                        ],
                      ),
                      value: selectedDate,
                      onChanged: (Item Value) {
                        setState(() {
                          selectedDate = Value;
                        });
                      },
                      items: date.map((Item user) {
                        return DropdownMenuItem<Item>(
                          value: user,
                          child: Row(
                            children: <Widget>[
                              user.icon,
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                user.name,
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Divider(
                color: Colors.black38,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 2, top: 10),
                    child: Column(
                      children: [
                        Text(
                          'Per Person',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          'INR 1450 per person',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  _createIncrementDicrementButton(
                      Icons.remove, () => _dicrement()),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        _currentCount.toString(),
                        style:
                        TextStyle(color: Colors.deepPurple, fontSize: 25),
                      )),
                  _createIncrementDicrementButton(
                      Icons.add, () => _increment()),
                ],
              ),
              Divider(
                color: Colors.black38,
              ),
              SizedBox(
                height: 110,
              ),
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
                    padding: const EdgeInsets.all(2.0),
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
            ]),
          ),
        ]),
      ),
    );
  }

  void _increment() {
    setState(() {
      _currentCount++;
      _counterCallback(_currentCount);
    });
  }

  void _dicrement() {
    setState(() {
      if (_currentCount > 1) {
        _currentCount--;
        _counterCallback(_currentCount);
      }
    });
  }

  Widget _createIncrementDicrementButton(IconData icon, Function onPressed) {
    return RawMaterialButton(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      constraints: BoxConstraints(minWidth: 32.0, minHeight: 32.0),
      onPressed: onPressed,
      elevation: 4.0,
      fillColor: Colors.white,
      child: Icon(
        icon,
        color: Colors.deepPurple,
        size: 16.0,
      ),
      shape: CircleBorder(),
    );
  }
}
