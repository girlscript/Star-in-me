import 'package:flutter/material.dart';
import 'animations/fadeanimations.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class CreatePassword extends StatefulWidget {
  @override
  _CreatePasswordState createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  final _formKey = GlobalKey<FormState>();
  bool showSpinner = false;
  final passController = TextEditingController();
  final confirmPassController = TextEditingController();
  String pass, confirmPass;
  bool _isChecked = false;

  bool _secureText = true;
  void toggle() {
    setState(() {
      _secureText = !_secureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeAnimation(
          2.0,
          ModalProgressHUD(
            inAsyncCall: showSpinner,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Center(
                  child: Form(
                      key: _formKey,
                      child: ListView(shrinkWrap: true, children: <Widget>[
                        Text(
                          'Create Password',
                          style: TextStyle(
                              color: Colors.purple[900],
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.0),
                        TextFormField(
                          controller: passController,
                          decoration: InputDecoration(
                            labelText: "New Password ",
                            suffixIcon: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    toggle();
                                  });
                                },
                                child: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.black12,
                                )),
                            border: const OutlineInputBorder(),
                          ),
                          validator: (value) =>
                              value.length < 6 ? 'Password too short.' : null,
                          onChanged: (value) {
                            pass = value;
                          },
                          obscureText: _secureText,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: confirmPassController,
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
                            suffixIcon: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    toggle();
                                  });
                                },
                                child: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.black12,
                                )),
                            border: const OutlineInputBorder(),
                          ),
                          validator: (value) {
                            if (value.length < 6) {
                              return "Password too short";
                            } else if (confirmPass != pass) {
                              return "Passwords do not match";
                            }
                            return null;
                          },
                          onChanged: (value) {
                            confirmPass = value;
                          },
                          obscureText: _secureText,
                        ),
                        SizedBox(height: 10.0),
                        Row(
                          children: [
                            Container(
                              child: Radio(
                                groupValue: false,
                                onChanged: (value) {
                                  if (value) {
                                    setState(() {
                                      _isChecked = true;
                                    });
                                  }
                                },
                                value: _isChecked,
                              ),
                            ),
                            Container(
                              child: Text(
                                'Yes, I am female',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.0),
                        Container(
                            width: double.infinity,
                            padding:
                                const EdgeInsets.only(left: 5.0, right: 5.0),
                            child: RaisedButton(
                              splashColor: Colors.lightBlueAccent,
                              elevation: 10.0,
                              highlightElevation: 30.0,
                              child: const Text('SET PASSWORD'),
                              color: Colors.deepPurple[500],
                              textColor: Colors.white,
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  print("");
                                }
                              },
                            )),
                      ]))),
            ),
          )),
    );
  }
}
