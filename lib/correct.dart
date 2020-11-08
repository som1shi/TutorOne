import 'package:flutter/material.dart';
import 'package:TutorOne/menu.dart';

Future<void> main() async {
  runApp(MaterialApp(home: Correct()));
}

class Correct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/correct.png"), fit: BoxFit.cover)),
        child: GestureDetector(onTap: () {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => MainMenu()),
          );
        }));
  }
}
