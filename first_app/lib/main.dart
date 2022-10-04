import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './pages/page1.dart';
import './pages/page2.dart';
import './pages/page3.dart';
import './pages/page4.dart';
import './constan.dart';
import './pages/page5.dart';
import './pages/page6.dart';
import './pages/page7.dart';
import './pages/page8.dart';
import './pages/page9.dart';

//import 'package:http/http.dart' as http;
/*
Future<void> getsomedata() async{
  var lol = await http.get(Uri.parse('http://127.0.0.1:8000/api/cds/16'));
  //print(lol)
}*/
void main() {
  //print("loleur");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  //'http://127.0.0.1:8000/api/cds/16'
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('loleur'),
            backgroundColor: Colors.red,
          ),
          body: Center(
            child: Text('My Page!',style: myStyleText(),),
          ),
          drawer: Drawer(
            // Add a ListView to the drawer. This ensures the user can scroll
            // through the options in the drawer if there isn't enough vertical
            // space to fit everything.
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Text('Drawer Header'),
                ),
                ListTile(
                    title: Text('Item 1'),
                    onTap: () =>
                    {
                      Get.to(
                        SecondRoute(),
                      ),
                    }),
                ListTile(
                    title: Text('Item 2'),
                    onTap: () =>
                    {
                      Get.to(
                        ThreeRoute(),
                      ),
                    },
                ),
                ListTile(
                  title: Text('text'),
                  onTap: () =>
                  {
                    Get.to(
                      TextRoute(),
                    ),
                  },
                ),
                ListTile(
                  title: Text('gratient'),
                  onTap: () =>
                  {
                    Get.to(
                      MyHomePage(),
                    ),
                  },
                ),
                ListTile(
                  title: Text('page5'),
                  onTap: () =>
                  {
                    Get.to(
                      Fivepage(),
                    ),},),
                ListTile(

                  title: Text('50'),
                  onTap: () =>
                  {
                  Get.to(
                    Sixpage(),
                  ),
                  },
                ),
                ListTile(

                  title: Text('imagecard'),
                  onTap: () =>
                  {
                    Get.to(
                      Sethpage(),
                    ),
                  },
                ),
                ListTile(

                  title: Text('page8'),
                  onTap: () =>
                  {
                    Get.to(
                      Page8(),
                    ),
                  },
                ),
                ListTile(

                  title: Text('todo'),
                  onTap: () =>
                  {
                    Get.to(
                      Todo(),
                    ),
                  },
                ),
              ],
            ),
          ),
        ));
  }}


