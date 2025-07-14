import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'UserInfo.dart';
 class Home extends StatefulWidget {
   const Home({super.key});
   @override
   State<Home> createState() => _HomeState();
 }
 class _HomeState extends State<Home> {
    int _count=0;
    incrementCount(){
      setState(() {
        _count++;
      });
      print(_count);
    }
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Rahat"),
         centerTitle: true,
       ),
       body:
         Center(
           child: Text(_count.toString(),style: TextStyle(fontSize: 100,color: Colors.black45),),
         ),
       floatingActionButton: FloatingActionButton(onPressed: incrementCount ,child: Icon(Icons.add,size: 30,),),
     );
   }
 }
