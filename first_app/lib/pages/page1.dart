
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Route"),backgroundColor: Colors.red,
      ),
      body: Center(
        child: Image.asset('assets/images/Firefox_wallpaper.png'),
      ),
    );
  }
}