import 'dart:ui';

import 'package:flutter/material.dart';
void main() async {
  runApp(MyApp());
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch, // 通常のタッチ入力デバイス
    PointerDeviceKind.mouse, // これを追加！
  };
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CalendarPageView1(),
      scrollBehavior: MyCustomScrollBehavior(), // これを追加！

    );
  }
}

class CalendarPageView1 extends StatelessWidget {
  const CalendarPageView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Text(
            "month and year",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        /// スクロールできるコンポーネント
        Expanded(
          child: PageView.builder(
            controller: PageController(
			    initialPage: 30,
			    ),
	    scrollDirection: Axis.horizontal,
	    //scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return const CalendarPage();
            },
          ),
        ),
      ],
    );
  }
}
class CalendarPageView2 extends StatelessWidget {
  const CalendarPageView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //return Column(
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
          child: Text(
            "month and year",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        /// スクロールできるコンポーネント
        Expanded(
          child: PageView.builder(
            controller: PageController(
			    initialPage: 30,
			    ),
	    scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return const CalendarPage();
            },
          ),
        ),
      ],
    );
  }
}
class CalendarPage extends StatelessWidget {
  const CalendarPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Calendar Page");
  }
}
/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'stack overflow',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      routes: {},
      home: KanbanState(),
    );
  }
}
class KanbanState extends StatefulWidget {
  @override
  KanbanStateState createState() {
    return KanbanStateState();
  }
}
class KanbanStateState extends State<KanbanState> {
  @override
  Widget build(BuildContext context) {
    Widget tagList= Container(
      color: Colors.green,
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: <Widget>[
              ActionChip(
                  backgroundColor: Colors.yellow,
                  label: Text('Tag1'),
                  onPressed: () {
                    //update board with selection
                  }),
              ActionChip(
                  //backgroundColor: Colors.transparent,
                  label: Text('Tag2'),
                  onPressed: () {
                    //update board with selection
                  }),
              ActionChip(
                  label: Text('Tag3'),
                  onPressed: () {
                    //update board with selection
                  }),
              ActionChip(
                  label: Text('Tag4'),
                  onPressed: () {
                    //update board with selection
                  }),
              ActionChip(
                  backgroundColor: Colors.yellow,
                  label: Text('Tag1'),
                  onPressed: () {
                    //update board with selection
                  }),
              ActionChip(
                  //backgroundColor: Colors.transparent,
                  label: Text('Tag2'),
                  onPressed: () {
                    //update board with selection
                  }),
              ActionChip(
                  label: Text('Tag3'),
                  onPressed: () {
                    //update board with selection
                  }),
              ActionChip(
                  label: Text('Tag4'),
                  onPressed: () {
                    //update board with selection
                  }),
            ],
          )
        ],
      ),
    );
    Widget boardView= Container(
      color: Colors.blue,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {},
            title: Row(
              children: <Widget>[
                Expanded(child: Text("This is item name")),
                Text("12 Dec 18"),
              ],
            ),
          );
        },
      ),
    );
    //int _value=0;
    return Scaffold(
        appBar: AppBar(
          elevation: 1.0,
          title: Text("Test title"),
        ),
        body: Container(
          color: Colors.amber,
          child: new Column(
            children: <Widget>[
              tagList,
              Expanded(
                child: boardView,
              )
            ],
          ),
          margin: EdgeInsets.all(10.0),
        ));
  }
}
*/
