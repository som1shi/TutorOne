import 'package:flutter/material.dart';
import 'package:TutorOne/menu.dart';

Future<void> main() async {
  runApp(MaterialApp(home: Wrong()));
}

class Wrong extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/wrong.png"), fit: BoxFit.cover)),
        child: GestureDetector(onTap: () {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => MainMenu()),
          );
        }));
  }
}
