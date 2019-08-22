import 'package:flutter/material.dart';
import 'package:pub_cn_mirrors_health_check/pub_cn_mirrors_health_check.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'pub_cn_mirrors_health_check',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pub_cn_mirrors_health_check'),
      ),
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'This is a blank pub for checking the health of https://pub.flutter-io.cn',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Container(
            height: 20,
          ),
          Text(
            'Please *do not* use this packages in your flutter project',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          ),
          Container(
            height: 20,
          ),
          if (check())
            Text(
              'This package works ok',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.green, fontWeight: FontWeight.w500),
            )
        ],
      )),
    );
  }
}
