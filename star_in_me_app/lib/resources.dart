import 'package:flutter/material.dart';

class Resources extends StatefulWidget {
  static final String ResourcesId = '/resources';
  @override
  State<StatefulWidget> createState() {
    return _ResourcesPage();
  }
}

class _ResourcesPage extends State<Resources> {
  var count = 10, tags = 3, stars = 12000;
  static const IconData star_outlined =
      IconData(0xe45c, fontFamily: 'MaterialIcons');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6D6D6),
      body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Stack(
              children: <Widget>[
                // for showing the number of results for searched query
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.only(left: 25, top: 30),
                  child: Text('Showing $count results for'),
                ),
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.fromLTRB(170, 30, 20, 20),
                  // from search bar
                  child: Text('\'Interaction Designer\'',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.only(left: 10, top: 50),
                  child: MaterialButton(
                    color: Colors.transparent,
                    child: Text('RESOURCE',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
                Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.only(left: 220, top: 50, right: 10),
                  child: MaterialButton(
                    child: Text('REFINE BY',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: count,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    height: 340,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/blog_image.png'),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                    child: Stack(children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(top: 110),
                                  child: RaisedButton(
                                      color: Colors.black,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text('TECHNOLOGY',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.9),
                                            fontSize: 12,
                                          ))),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 110, left: 5),
                                  child: RaisedButton(
                                      color: Colors.black,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text('TECHNOLOGY',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.9),
                                            fontSize: 12,
                                          ))),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 110, left: 5),
                                  padding: EdgeInsets.all(0),
                                  child: new SizedBox(
                                    width: 50,
                                    height: 40,
                                    child: RaisedButton(
                                      color: Colors.black,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text('+$tags',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.9),
                                            fontSize: 12,
                                          )),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                padding: EdgeInsets.only(top: 10),
                                child: Text('WEFT Women Entrepreneurs Annual',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ))),
                            Container(
                                padding: EdgeInsets.only(top: 5),
                                child: Text('Conference and Awards 2019',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 18,
                                    ))),
                            Container(
                              padding: EdgeInsets.only(top: 20),
                              child: Row(
                                children: <Widget>[
                                  Container(
                                      child: Text('Pratiksha Gupta ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          )) // the name of logged in user
                                      ),
                                  Container(
                                    child: Text('| 2 mins read',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Divider(
                                height: 1,
                                color: Colors.grey[350],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: IconButton(
                                      // icon: Icon(star_outlined,
                                      icon: Icon(Icons.star,
                                          size: 20, color: Colors.grey[350]),
                                    ),
                                  ),
                                  Expanded(
                                    // child: Text('$stars'),
                                    child: Text('12k',
                                        style: TextStyle(
                                          color: Colors.grey[350],
                                        )),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.comment,
                                        color: Colors.grey[350],
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text('21',
                                        style: TextStyle(
                                          color: Colors.grey[350],
                                        )),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.share,
                                        color: Colors.grey[350],
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text('10',
                                        style: TextStyle(
                                          color: Colors.grey[350],
                                        )),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.visibility,
                                        color: Colors.grey[350],
                                        size: 20,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      '1k',
                                      style: TextStyle(
                                        color: Colors.grey[350],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.bookmark,
                                        size: 20,
                                        color: Colors.grey[350],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                );
              },
            ),
          ])),
    );
  }
}
