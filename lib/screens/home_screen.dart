import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'package:soundpool/soundpool.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScrState createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScreen> {

 // String _text01 = "おめでとうございます";
 // String _text02 = "合格です";
 //  String _text03 = "よくできました";
 // String _text04 = "残念でした";
  // String _text05 = "不合格です";
 // String _text06 = "頑張りましょう";

  List<String> _texts = [
    "おめでとうございます",
    "合格です",
    "よくできました",
    "残念でした",
    "不合格です",
    "頑張りましょう"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ツッコミマシーン"),
        centerTitle: true,
      ),
      body: Center(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(flex: 1, child: _soundButton()), //TODO ボタン
                  Expanded(flex: 1,child: _soundButton()), //TODO ボタン
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(flex: 1,child: _soundButton()), //TODO ボタン
                  Expanded(flex: 1,child: _soundButton()), //TODO ボタン
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(flex: 1,child: _soundButton()), //TODO ボタン
                  Expanded(flex: 1,child: _soundButton()), //TODO ボタン
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _soundButton() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: RaisedButton(

      ),
    );
  }
}





    
