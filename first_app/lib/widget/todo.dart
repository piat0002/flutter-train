import 'package:flutter/material.dart';

class Checktodo extends StatefulWidget {
  String? name;
  Checktodo({Key? key, this.name}) : super(key: key);

  @override
  _ChecktodoState createState() => _ChecktodoState();
}

class _ChecktodoState extends State<Checktodo> {
  @override
  bool isChecked = false;
  Widget build(BuildContext context) {
    return Row(
        children:[Checkbox(
      checkColor: Colors.white,
      value: isChecked ,
      onChanged: (bool? value) {
        print(isChecked);
        print(value);
        setState(() {
          isChecked = value!;
        });
      },),Text(widget.name != null ? widget.name!: '', style: TextStyle(decoration: !isChecked? TextDecoration.none : TextDecoration.lineThrough))]);

  }
}
