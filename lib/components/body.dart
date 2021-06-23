import 'package:flutter/material.dart';
import 'package:to_do_list/components/addTodos.dart';
import 'package:to_do_list/components/myTodos.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "My To-dos",
          style: TextStyle(),
        )),
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AddToDos(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Need To Do",
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w600),
                ),
                MyToDos(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
