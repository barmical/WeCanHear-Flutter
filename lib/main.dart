import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyekdicoding/start.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'We Can Hear',
      theme: ThemeData.dark(),
      home: StartMenu(),
    );
  }
}