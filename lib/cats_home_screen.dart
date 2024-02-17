
import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/widgets/cat_card.dart';

class  CatHomeScreen extends StatelessWidget {
  const CatHomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('My Cats',
         textAlign: TextAlign.center,
         style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
       backgroundColor:Colors.brown ,
       actions: [IconButton(onPressed:() {}, icon: Icon(Icons.favorite,
       color: Colors.white,))],
     ) ,
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: cats.length,
          itemBuilder:( context, index){
            final cat = cats[index];
            return CatCard(cat: cat);
    },
      ),
    );
  }
}


