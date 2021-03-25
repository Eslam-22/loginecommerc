import 'package:flutter/material.dart';
class Story {
  int id;
  String name,email;
  Story(
      this.id,this.email,this.name
      );
    Story.fromJson(Map<String,dynamic>map){
      this.id= map['id'];
      this.email=map['email'];
      this.name=map['title'];

//first step to build is building the model
}
}