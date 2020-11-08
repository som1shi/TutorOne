import 'dart:async';
import 'package:TutorOne/correct.dart';
import 'package:TutorOne/wrong.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobile_vision/flutter_mobile_vision.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _cameraOcr = FlutterMobileVision.CAMERA_BACK;
  String _textValue = "Click to start scanning";

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Camera Scanner'),
        ),
        body: Center(
            child: new ListView(
          children: <Widget>[
            new Text(_textValue),
            new RaisedButton(
              onPressed: _read,
              child: new Text('Start Scanning!'),
            ),
          ],
        )),
      ),
    );
  }

  Future<Null> _read() async {
    List<OcrText> texts = [];
    try {
      texts = await FlutterMobileVision.read(
        camera: _cameraOcr,
        waitTap: true,
      );

      setState(() {
        _textValue = texts[0].value;
      });
    } on Exception {
      texts.add(new OcrText('Failed to recognize text.'));
    }
    if (texts[0].value == "A") {
      return Navigator.push(
        context,
        new MaterialPageRoute(builder: (context) => Correct()),
      );
    }
    return Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => Wrong()),
    );
  }
}
