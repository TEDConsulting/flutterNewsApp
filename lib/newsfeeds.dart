import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'constant.dart';
import 'dart:async';
import 'dart:convert';
import 'newsModel.dart';
import 'package:swipedetector/swipedetector.dart';

class NewsFeedPage extends StatelessWidget{
 static String tag = "NewsFeedPage-tag";
  NewsFeedPage(this.text);
  final int text;
 Widget build(BuildContext context)
  {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: new Text("Bussiness News",style: new TextStyle(color: Colors.white)),
        iconTheme: IconThemeData(color: Colors.white),
      ),
    body:new SafeArea(
        child: new Column(
        children: [
          new Expanded(
            flex: 1,
            child: new Container(
              width: width,
              color: Colors.white,
              child: new Card(
                  elevation: 3.0,
                  child: SwipeDetector (
                    child: new Container(
                      child:Column(
                        children: <Widget>[
                          Image.asset("assets/business.jpg",alignment:Alignment.center,width: 120.0,
                            height: 120.0, ),
                          new Padding(padding: EdgeInsets.all(15.0),
                            child: Text("Business Headlines",
                              style: TextStyle(fontSize: 20.0,color: Colors.black),textAlign: TextAlign.center,) ,),
                        ],
                      ),
                    ),
                    onSwipeDown: (){
                      print('pppppp');
                    },
                    onSwipeUp: (){
                      print('this isn');
                    },
                  )
              ),
            ),
          ),
        ],
        )
      ),
    );
  }
}

Future<NewsModel> fatchNews() async{
  final response = await http.get(Constant.base_url+"top-headlines?country=in&category=business&apiKey="+Constant.key);
  if(response.statusCode==200)
    {
      return NewsModel.fromJson(json.decode(response.body));
    }else
      {
        throw  Exception("Falies to Load");
      }
}
