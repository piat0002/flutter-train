import 'package:flutter/material.dart';
import '../widget/mydivider.dart';
class Fivepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter divider Example'),
      ),
      body: Mydivider(thetext: 'lol'),
    );
  }
}