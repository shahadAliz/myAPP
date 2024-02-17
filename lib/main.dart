import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_project/cat_details_screen.dart';
import 'package:flutter_project/cats_home_screen.dart';
import 'package:flutter_project/data/all.cats.dart';
import 'package:flutter_project/model/cat.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();


void main() {

// how to parse cats from json to cat object
// final listOfCatsAsJson = allCats;
// final listOfCatsAsObjects = <Cat>[];
// for (var i = 0; i < listOfCatsAsJson.length; i++){
 // final catAsJson = listOfCatsAsJson[i];
  // final catAsObject = Cat.fromJson(catAsJson);
  //listOfCatsAsObjects.add(catAsObject);
 //   }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatHomeScreen(),
    );
  }
}

