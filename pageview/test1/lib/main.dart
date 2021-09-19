import 'dart:ui';
import 'package:flutter/material.dart';

List<Widget> list1=[
  FirstPage(),
  SecondPage(),
  ThirdPage(),
];

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch, // 通常のタッチ入力デバイス
    PointerDeviceKind.mouse, // これを追加！
  };
}

void main(){
  runApp(MaterialApp(
      home:MyApp(),
      scrollBehavior: MyCustomScrollBehavior(), // これを追加！
  ));
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:PageView.builder(
        itemBuilder:(context,index){
          return list1[index];
        },
        itemCount:list1.length,
      ),
    );
  }
}
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color:Colors.pink[100],);
  }
}
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color:Colors.deepOrange,);
  }
}
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color:Colors.blueAccent,);
  }
}
