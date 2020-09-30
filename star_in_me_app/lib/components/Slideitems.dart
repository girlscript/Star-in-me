import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:star_in_me_app/components/slide_dots.dart';
import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);
  @override
  Widget build(BuildContext context) {
    int _currentPage;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: <Widget>[
            Container(
              height: 500,
              width: 500,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  image: AssetImage(slideList[index].imageURL),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 200,
                  ),
                  Row(
                    children: <Widget>[
                      for (int i = 0; i < slideList.length; i++)
                        if (i == _currentPage)
                          SlideDots(true)
                        else
                          SlideDots(false)
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      slideList[index].title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      slideList[index].description,
                      textAlign: TextAlign.left,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      child: Text(
                        'LOOK FOR AN APT GUIDE',
                        style: TextStyle(fontSize: 18),
                      ),
                      padding: const EdgeInsets.all(15),
                      color: Colors.purple,
                      textColor: Colors.white,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'How it works?',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
