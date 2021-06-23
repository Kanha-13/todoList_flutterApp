import 'package:flutter/material.dart';

class AddToDos extends StatelessWidget {
  final titleController = TextEditingController();
  final descController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(hintText: "Title", labelText: "Title"),
          controller: titleController,
        ),
        SizedBox(
          height: 20,
        ),
        TextFormField(
          decoration:
              InputDecoration(hintText: "Description", labelText: "Desc"),
          controller: descController,
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
            onPressed: () {
              final data = {descController.text, titleController.text};

              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Text(data.last),
                  );
                },
              );
            },
            child: Text("Add"))
      ],
    );
  }
}
