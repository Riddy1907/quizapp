import 'package:flutter/material.dart';
import 'package:quizapp/quizPage.dart';

void main() {
  runApp(StartApp());
}

class StartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StartPage()); 
  }
}

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            "Startseite",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
          children: [
            Text("Willkommen in der Quiz App"),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizPage()));
            }, 
            child: Text("Quiz starten"))
          ],
        )),
      );
  }
}