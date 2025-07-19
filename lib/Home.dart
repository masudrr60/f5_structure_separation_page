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


  _addTask(){
    if(_taskControler.text.isNotEmpty){
      setState(() {
        _task.add(_taskControler.text);
        _taskControler.clear();
      });
    }
  }
  _removeTask(int index){
    setState(() {
      _task.removeAt(index);
    });
  }
  _removeall(){
    setState(() {
      _task.clear();
    });
  }


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
              controller: _taskControler,
              decoration: InputDecoration(
                hintText: "Enter your task",
                border: OutlineInputBorder(),
                suffixIcon:IconButton(
                    onPressed:()=> _addTask(),
                    icon:Icon(Icons.add)),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: _task.length,
                itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title:Text(_task[index]),
                    trailing:IconButton(
                      onPressed: ()=> _removeTask(index),
                      icon:Icon(Icons.delete),))
                );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:()=> _removeall(),
        child:Icon(Icons.delete,color: Colors.red),),
    );
  }
}