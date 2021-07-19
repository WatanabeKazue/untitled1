import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScrState createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ツッコミマシーン"),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
     children: <widget>[
       _soundButton(),
       _soundBotton(),

     ],
      ),
    );
  }
}
