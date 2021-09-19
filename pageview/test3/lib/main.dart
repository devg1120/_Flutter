import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  //PageController controller =  PageController(viewportFraction: 0.8);
  PageController controller =  PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: <Widget>[
          page1(),
          page2(),
        ],
      ),
    );
  }

  Widget page1() {
    return Center(
      child: Container(
        child: Text('PageView(横)', style: TextStyle(fontSize: 50.0),),
      ),
    );
  }

  Widget page2() {
    return Center(
      child: Container(
        child: Text('成功', style: TextStyle(fontSize: 30.0),),
      ),
    );
  }
}
