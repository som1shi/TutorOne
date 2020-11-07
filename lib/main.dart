import 'package:flutter/material.dart';
import 'package:TutorOne/text.dart';

void main() => runApp(MaterialApp(home: TutorApp()));

class TutorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/background.png"), fit: BoxFit.cover)),
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 210.0),
                  child: Text(
                    'TutorApp',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                        color: Colors.lightBlue),
                  ),
                ),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text("Get Started"),
                    onPressed: () {
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => new Lobby()),
                      );
                    },
                    textColor: Colors.lightBlue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
