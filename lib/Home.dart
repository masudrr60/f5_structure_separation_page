import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'UserInfo.dart';
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> _task =[];
  TextEditingController _taskControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Simple to do list "),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter your task",
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.add),
              ),
            ),
            SizedBox(height: 20,),

            Expanded(
              child: ListView.builder(itemCount: 10,
                itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title:Text("I have to do this at any time "),
                    trailing: Icon(Icons.delete),
                  ),
                );
                },
              ),
            )
          ],
        ),
      )
    );
  }
}