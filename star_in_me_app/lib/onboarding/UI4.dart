import 'package:flutter/material.dart';

final TextEditingController clg = TextEditingController();
final TextEditingController mail = TextEditingController();
final TextEditingController designation = TextEditingController();
final TextEditingController linkedin = TextEditingController();

class UI4 extends StatelessWidget {
  static final onboardingUi4 = '/onboardingUI4';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image(
            image: AssetImage("images/logo.png"),
          ),
        ),
        elevation: 15,
        actions: [
          Center(
            child: Text(
              "STEP 1",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.0,
              ),

              Text(
                "Let's Complete your profile  ",
                style: TextStyle(
                  color: Color(0xff4f439a),
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              //),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(top: 10.0, left: 22.0),
              //   child:
              //Expanded(
              //flex: 1,
              //child:
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  "This will help us know your professional experience for connections.",
                  style: TextStyle(
                      color: Colors.grey.shade600,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                child: TextFormField(
                  controller: clg,
                  maxLines: 1,
                  cursorColor: Color(0xff4f439a),
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(

                      labelText: 'College/Company/Organization',
                      labelStyle: TextStyle(
                          color: Color(0xff4f439a),
                          fontSize: 16.0
                      ),
                      focusedBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color(0xff4f439a)
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            // color: Colors.deepPurple,
                            //width: 2.0
                          )
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                child: TextFormField(
                  controller: mail,
                  maxLines: 1,
                  cursorColor: Color(0xff4f439a),
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'pratiksha.g@xelp.com',
                      labelStyle: TextStyle(
                          color: Color(0xff4f439a),
                          fontSize: 16.0
                      ),

                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color(0xff4f439a)
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide())),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                child: TextFormField(
                  controller: designation,
                  cursorColor: Color(0xff4f439a),
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'Designation',
                      labelStyle: TextStyle(
                          color: Color(0xff4f439a),
                          fontSize: 16.0
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color(0xff4f439a)
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide())),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
                child: TextFormField(
                  controller: linkedin,
                  maxLines: 1,
                  cursorColor: Color(0xff4f439a),
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  decoration: InputDecoration(
                      labelText: 'Linkedin Profile',
                      labelStyle: TextStyle(
                          color: Color(0xff4f439a),
                          fontSize: 16.0
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                              color: Color(0xff4f439a)
                          )
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide())),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
                child: Text(
                  "Upload a professional headshot    ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
                child: Text(
                  "Your picture is logo of your personal brand!  ",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 19.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.start,
                //scrossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.play_arrow,
                    size: 35.0,
                    color: Color(0xff4f439a),
                  ),
                  Text(
                    'WATCH DEMO VIDEO',
                    style: TextStyle(
                        color: Color(0xff4f439a),
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              ButtonTheme(
                minWidth: double.infinity,
                height: 50.0,
                child: OutlineButton(
                  onPressed: () => print("BUTTON PRESSED"),
                  child: Text(
                    "ADD PHOTO OR VIDEO",
                    style: TextStyle(color:Color(0xff4f439a), fontSize: 17.0),
                  ),
                  borderSide: BorderSide(
                    color: Color(0xff4f439a),
                    width: 1,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
                child: Text(
                  "You can uplaod upto 5 photos or videos",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 19.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Divider(thickness: 1),
              ButtonTheme(
                height: 50,
                minWidth: 150,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0) ),
                child: RaisedButton(
                  onPressed:()=> print("NEXT button pressed"),
                  child: Text("NEXT", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                  ),),
                  color: Color(0xff4f439a),
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.grey,
      //   elevation: 30,
      //   child: Row(
      //     children: [
      //       SizedBox(),
      //       Center(
      //         child: FlatButton(
      //           color: Colors.blue,
      //           onPressed: () => print("Next Button pressed"),
      //           child: Text("NEXT"),
      //         ),
      //       ),
      //       SizedBox()
      //     ],
      //   ),
      // ),
    );
  }
}
