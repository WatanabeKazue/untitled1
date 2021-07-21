import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:soundpool/soundpool.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  int number = 3;

  @override
  void initState() {
    _initSounds();
    _soundIds.add(1);
    _soundIds.add(2);

    _soundpool = Soundpool.fromOptions();
    super.initState();
  }

  void _initSounds() async {
    _soundpool = Soundpool();

    _soundpool[0] = await loadSound("assets/sounds/sound1.mp3");

    Future<void> loadSound(String soundPath){

    }

    _soundIds[0] = await rootBundle.load("assets/sounds/sound1.mp3");
    _soundIds[1] = await rootBundle.load("assets/sounds/sound2.mp3");
    _soundIds[2] = await rootBundle.load("assets/sounds/sound3.mp3");
    _soundIds[3] = await rootBundle.load("assets/sounds/sound4.mp3");
    _soundIds[4] = await rootBundle.load("assets/sounds/sound5.mp3");
    _soundIds[5] = await rootBundle.load("assets/sounds/sound6.mp3");

    Future<int> loadSound(String soundPath){
    return rootBundle.load(soundPath).then((value) => _soundpool.load(value));
    }



  @override
  void dispose() {
    _soundpool.release();
    super.dispose();
  }

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
  }

  loadSound(String s) {}
}
//TODO 98[List]
