

import 'package:flutter/material.dart';
import '../widget/todo.dart';
class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<Widget> widgets = [];
  final fieldText = TextEditingController();

  void clearText() {
    fieldText.clear();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    body: Center(child:Column(children: [ TextField(
      onSubmitted: (String string){setState(() {widgets.add(Checktodo(name: string));
      clearText();},);
    },controller: fieldText,
    ),Column(children: widgets ,)],)),
    );

  }
}
