import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

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
        body: Container(
            padding: EdgeInsets.all(12.0),
            child: GridView.builder(
              itemCount: images.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 25,
                  mainAxisSpacing: 25,
              ),
              itemBuilder: (BuildContext context, int index){
                return Image.asset('assets/' + images[index]);
              },
            )),
      ),
    );
  }
}