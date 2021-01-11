import 'dart:io';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter demo app",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter demo app"),
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => debugPrint("hello world"),
          ),
          actions: <Widget>[
            Padding(
              child: IconButton(
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  debugPrint("ccc");
                  exit(0);
                },
              ),
              padding: EdgeInsets.only(right: 10),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => setState(() {
            counter++;
          }),
          tooltip: "add",
          child: Icon(Icons.add),
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "You've pressed button these many times",
                style: TextStyle(color: Colors.pink[600]),
              ),
              Text(
                counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              )
            ],
          ),
        ),
      ),
    );
  }
}
