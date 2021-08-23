import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar tabBarku = TabBar(
      indicator: BoxDecoration(
          color: Colors.green.shade100,
          border: Border(top: BorderSide(color: Colors.green, width: 3))),
      tabs: <Widget>[
        Tab(
          child: Image(
            image: AssetImage('assets/menggokils.jpeg'),
          ),
        ),
        Tab(
          icon: Icon(Icons.computer),
        ),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text('Contoh Tab Bar'),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(tabBarku.preferredSize.height),
                  child: Container(color: Colors.lightGreen, child: tabBarku))),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text('Tab Menggokil'),
              ),
              Center(
                child: Text('Tab Komputer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
