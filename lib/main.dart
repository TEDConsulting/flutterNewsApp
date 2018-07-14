import 'package:flutter/material.dart';
import 'home.dart';
import 'newsfeeds.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  final routes = <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    NewsFeedPage.tag: (context) => NewsFeedPage(null)
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        //fontFamily: 'Nunito',
      ),
      home: HomePage(),
      routes: routes,
    );
  }
}