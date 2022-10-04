
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class  Mycard extends StatelessWidget {
  String? chemin;
  String? titre;
  Mycard({Key? key,this.chemin,this.titre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> template = [Text(titre != null ? titre!: ''),Image.asset(chemin != null ? chemin! : ''),];
    return Center(
        child: Card(
            child: Column(children: template),
        ),
      );
  }
}