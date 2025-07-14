

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String ? name;
  const UserInfo({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("User Info" ),
          centerTitle: true,
        ),
        body: Column(
          children:[
            Text(name!,style: TextStyle(fontSize: 30,color: Colors.red),),
            ElevatedButton(onPressed: () {
            },

                child: Text("Go page 1")),
          ],
        )
    );
  }
}