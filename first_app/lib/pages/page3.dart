import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TextRoute extends StatelessWidget {
  const TextRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("3 Route"),backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('TEXT EN MAJUSCULE', style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
            SelectableText('select',textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Click ***** -Morsay'),
            ),
        RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 30
                ),
                children: const <TextSpan>[
                  TextSpan(text: 'Hello', style: TextStyle(fontWeight: FontWeight.w100,color: Colors.red,)),
                  TextSpan(text: ' Happy', style: TextStyle(fontWeight: FontWeight.normal,color: Colors.yellow,)),
                  TextSpan(text: ' World!',style: TextStyle(fontWeight: FontWeight.normal,color: Colors.orange,)),

                ],
              ),
            )
          ],
        )
      ),
    );
  }
}