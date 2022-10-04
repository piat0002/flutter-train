import 'package:flutter/material.dart';
import '../widget/lol.dart';
class Sethpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter card Example'),
      ),
      body: Mycard(titre: 'yo',chemin: 'assets/images/Firefox_wallpaper.png',),
    );
  }
}