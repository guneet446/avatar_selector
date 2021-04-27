import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class AvatarImage extends StatefulWidget {
  final String currentImage;

  AvatarImage({this.currentImage});

  @override
  _AvatarImageState createState() => _AvatarImageState();
}

class _AvatarImageState extends State<AvatarImage> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Image.asset('assets/' + widget.currentImage),
      onTap: () {
        setState(() {
          selected = widget.currentImage;
        });
      },
    );
  }
}

