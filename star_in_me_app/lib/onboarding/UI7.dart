import 'package:flutter/material.dart';


class UI7 extends StatelessWidget {
  static final onboardingUi7 = '/onboardingUI7';
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              backgroundColor: Colors.grey[200],
              expandedHeight: 400,
              leading: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/logo.png'),
              ),

              flexibleSpace: FlexibleSpaceBar(
                title: RichText(
                  text: TextSpan(
                    text: 'Where do \nyou ',
                    style: TextStyle(
                      color: Color(0xFF7F7F7F),
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(text: 'work?',
                        style: TextStyle(
                            color: Color(0xFF4F439A),
                            fontSize: 30.0, fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(

                children: <Widget>[
                  SizedBox(
                    height: 100.0,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter your Organisation/Workplace/Company',

                      labelStyle: new TextStyle(
                        color: const Color(0xFF7F7F7F),
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 50.0),

                      enabledBorder: UnderlineInputBorder(

                        borderSide: BorderSide(color: Color(0xFF4F439A),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



