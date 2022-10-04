import 'package:flutter/material.dart';

class Sixpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> template = [
      Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.amber[600],
        width: 48.0,
        height: 48.0,
      ),
    ];

    for (var i = 0; i < 48; i++) {
      template.add(
        Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.red[(i * 100)%1000],
          width: 48.0,
          height: 48.0,
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter collum Example'),
      ),
      body: Center(
        child: SingleChildScrollView(child: Column(children: template)),
      ),
    );
  }
}
