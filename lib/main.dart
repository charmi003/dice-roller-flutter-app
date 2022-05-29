import 'package:flutter/material.dart';
import 'HomePage.dart';

//update pubspec file for image assets first

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Dice Roller App',
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        primarySwatch: Colors.orange
      ),
      home:HomePage()
    );
  }
}