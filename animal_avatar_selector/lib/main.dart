import 'package:animal_avatar_selector/AvatarImage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

String selected = '051-bat.png';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String currentImage;

  List<String> images = [
    '051-bat.png',
    '051-beaver.png',
    '051-bee.png',
    '051-beetle.png',
    '051-bulldog.png',
    '051-camel.png',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.check, size: 35),
          label: Container(
            child: Image.asset('assets/' + selected),
            height: 50,
          ),
          onPressed: () {
            print(selected);
          },
        ),
        body: Container(
            padding: EdgeInsets.all(12.0),
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
              ),
              itemBuilder: (BuildContext context, int index){
                currentImage = images[index];
                return AvatarImage(currentImage: currentImage);
              },
            )),
      ),
    );
  }
}