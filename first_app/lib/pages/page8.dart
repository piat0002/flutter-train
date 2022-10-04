
import 'package:flutter/material.dart';

class Page8 extends StatefulWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {
  String _name = 'OK';
  bool isSwitched = false;
  double _currentSliderValue = 20;
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(children:[
          TextField(
            onChanged: (String string){
              setState(() {
                _name = string;
        });
              //print(_name);
              },
          ),
        Divider(), Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
                print(isSwitched);
              });
            },
            activeTrackColor: Colors.yellow,
            activeColor: Colors.orangeAccent,
          ),(isSwitched ? Text("true") : Text("false")),
        Slider(
          value: _currentSliderValue,
          min: 0,
          max: 100,
          divisions: 5,
          label: _currentSliderValue.round().toString(),
          onChanged: (double value) {
            setState(() {
              _currentSliderValue = value;
            });
          },
        ),                        Checkbox(
            checkColor: Colors.white,
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
          ), Text(_name,style: TextStyle(fontSize: _currentSliderValue, color: isSwitched ? Colors.blue : Colors.red, decoration: isChecked? TextDecoration.none : TextDecoration.lineThrough),),
        ]

        ),
      ),
    );
  }
}
