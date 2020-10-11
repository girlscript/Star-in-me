import 'package:flutter/material.dart';

class Slide {
  final String imageURL;
  final String title;
  final String description;

  Slide(
      {@required this.imageURL,
      @required this.title,
      @required this.description});
}

final slideList = [
  Slide(
      imageURL: 'images/assets/Build-your-profile.jpg',
      title: 'Create your best profile',
      description:
          'Would not it be amazing to access a unique profile builder to create a visual resume and showcase yourself using videos, pictures and stories?'),
  Slide(
      imageURL: 'images/assets/Events.jpg',
      title: 'Create/Join Networking Groups',
      description:
          'Connect with a diverse group of women professionals. Share, learn, inspire and find a sense of community and belonging.'),
  Slide(
      imageURL: 'images/assets/Seek-guidance.jpg',
      title: 'Seek Guidance',
      description:
          'If you need career guidance, then look no further. You can find a career guide who has walked your path and can guide you on your journey.'),
  Slide(
      imageURL: 'images/assets/newImage.jpg',
      title: 'Access Learning Solutions',
      description:
          'Continuous learning and skill enhancement are critical to advance one’s career.')
];
