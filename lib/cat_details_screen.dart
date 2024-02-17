import 'package:flutter/material.dart';
import 'package:flutter_project/data/all.cats.dart';
import 'package:flutter_project/widgets/cat_details.dart';
import 'model/cat.dart';


class  CatDetailsScreen extends StatelessWidget {
  final Cat cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name,style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
        backgroundColor:Colors.brown ,
      ),
      body: CatDetailsWidget(
        cat: cat,
      ),

    );
  }


}

