import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:soundpool/soundpool.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

//class _HomeScreenState extends State<HomeScreen> {
//String _textHeader = "あなたの名前を教えてください";
//TextEditingController _textEditingController = TextEditingController();
//widget _imageWidget = Container();


// String _text01 = "おめでとうございます";
// String _text02 = "合格です";
// String _text03 = "よくできました";
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

List<int> _soundIds = [0, 0, 0, 0, 0, 0];


late Soundpool _soundpool;

@override
void initState() {
  soundIds.add(1);
  soundIds.add(2);


  _soundpool = Soundpool.fromOptions();
  super.initState();
}

void _initSounds() {}


Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("ツッコミマシーン"),
      centerTitle: true,
    ),
    body: Center(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 1, child: _soundButton(_texts[0], _soundIds[0])),
                  //TODO ボタン
                  Expanded(
                      flex: 1, child: _soundButton(_texts[1], _soundIds[1])),
                  //TODO ボタン
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 1, child: _soundButton(_texts[2], _soundIds[2])),
                  //TODO ボタン
                  Expanded(
                      flex: 1, child: _soundButton(_texts[3], _soundIds[3])),
                  //TODO ボタン
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                      flex: 1, child: _soundButton(_texts[4], _soundIds[4])),
                  //TODO ボタン
                  Expanded(
                      flex: 1, child: _soundButton(_texts[5], _soundIds[5])),
                  //TODO ボタン
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _soundButton(String displayText, int soundId) {
  return Container(
    padding: EdgeInsets.all(8.0),
    child: RaisedButton(
      onPressed: null, //TODO 音を鳴らす
      child: Text(displayText),
    ),
  );
}}
//TODO 98[List] 