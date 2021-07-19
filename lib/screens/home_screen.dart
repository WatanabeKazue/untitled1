import 'package:flutter/material.dart';
import 'package:flutter/material.dart';


import 'package:soundpool/soundpool.dart';

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
       _soundButton(),
       _soundBotton(),

     ],
      ),
    );
  }
}
