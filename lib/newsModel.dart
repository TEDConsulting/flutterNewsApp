import 'dart:async';
import 'dart:convert';

class NewsModel{
 String auther;
 String title;
 String description;
 List<String> news;

 NewsModel({this.auther,this.title,this.description});

  factory NewsModel.fromJson(Map<String,dynamic> json)
  {
    return NewsModel(
      auther: json['auther'],
      title: json['title'],
      description: json['description']
    );
  }
}
