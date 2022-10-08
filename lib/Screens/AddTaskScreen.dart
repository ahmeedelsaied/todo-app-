import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/Task_data.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String?newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
        Text(
          "Add Task",
          textAlign: TextAlign.center,

          style: TextStyle(
              fontSize: 30,
              color: Colors.indigo[400],
              fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 30,),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText) {
            newTaskTitle=newText;
          },
        ),   SizedBox(height: 30,),
        TextButton(onPressed: () {
          Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
          Navigator.pop(context);
        }, child: Text("add"),style: TextButton.styleFrom(
          backgroundColor: Colors.teal[400],primary: Colors.white
        ),)
      ]),
    );
  }
}
