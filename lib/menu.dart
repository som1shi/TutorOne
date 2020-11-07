import 'package:TutorOne/text.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MainMenu());

class MainMenu extends StatelessWidget {
  @override
  // ignore: missing_return
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg2.png"), fit: BoxFit.cover)),
      child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Lobby()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/a2.gif')),
                    color: Colors.lightBlueAccent[100],
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new Lobby()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage('assets/b2.gif')),
                      color: Colors.lightBlueAccent[100],
                      borderRadius: BorderRadius.circular(50)),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Lobby()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/c2.gif')),
                    color: Colors.lightBlueAccent[100],
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Lobby()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/d2.gif')),
                    color: Colors.lightBlueAccent[100],
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Lobby()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/e2.gif')),
                    color: Colors.lightBlueAccent[100],
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Lobby()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/f2.gif')),
                    color: Colors.lightBlueAccent[100],
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Lobby()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/g2.gif')),
                    color: Colors.lightBlueAccent[100],
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Lobby()),
                );
              },
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/h2.gif')),
                    color: Colors.lightBlueAccent[100],
                    borderRadius: BorderRadius.circular(50)),
              ),
            ),
          ]),
    );
  }
}
