import 'dart:ffi';

import 'package:flutter/material.dart';

class Mydivider extends StatelessWidget {
  String? thetext;

  Mydivider({Key? key, this.thetext}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    List<Widget> template = [
      Divider(
        height: 20,
        thickness: 5,
        indent: 20,
        endIndent: 20,
      ),
    ];

    if(thetext != null){
      template.add(
        Text(thetext!),
      );
      template.add(
        Divider(),
      );
    }
    return Center(
      child: Column(
        children: template

      ),
    );
  }
}

