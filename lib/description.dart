import 'package:flutter/material.dart';
import 'newsfeeds.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(new DescriptionPage(null));

class DescriptionPage extends StatelessWidget {
  static String tag = 'description-page';
  DescriptionPage(this.urlnews);
  final String urlnews;
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Full Article",style: new TextStyle(color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body:new SafeArea(
          child: new Column(
            children: <Widget>[
            MaterialApp(
            routes: {
            "/": (_) => new WebviewScaffold(
            url: urlnews,
              appBar: new AppBar(title: new Text("")),
            )
            },
            ),
            ],

          ),
      ),
    );
  }
}