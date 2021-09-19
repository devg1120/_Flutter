import 'package:flutter/material.dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  //const MyApp({Key key}) : super(key: key);
  const MyApp() ;
  @override
  Widget build(BuildContext context)=> MaterialApp(
        home: const MyHomePage(),
      );
}
class MyHomePage extends StatelessWidget {
  //const MyHomePage({Key key}) : super(key: key);
  const MyHomePage() ;
  @override
  Widget build(BuildContext context)=> DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Center(
            child: Text('use the mouse wheel to scroll')),
            bottom: TabBar(
              tabs: const [
                Center(child: Text('ScrollView')),
                Center(child: Text('PageView'))
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i= 0; i < 10; i++)
                      Container(
                        height: MediaQuery.of(context).size.height,
                        child: const Center(
                          child: FlutterLogo(size: 80),
                        ),
                      ),
                  ],
                ),
              ),
              PageView(
                scrollDirection: Axis.vertical,
                children: [
                  for (int i= 0; i < 10; ++i)
                    const Center(
                      child: FlutterLogo(size: 80),
                    ),
                ],
              ),
            ],
          ),
        ),
      );
}
