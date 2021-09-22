import 'package:api_demo9/home_page.dart';
import 'package:api_demo9/internet_speed.dart';
import 'package:api_demo9/intro_app.dart';
import 'package:api_demo9/local_storage.dart';
import 'package:api_demo9/quiz_app.dart';

import 'package:flutter/material.dart';

class TaskList extends StatefulWidget {
  const TaskList({Key key}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tasks'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: TextButton.styleFrom(
                side: BorderSide(width: 1, color: Colors.black12),
                //minimumSize: Size(mWidth * 0.88, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: Colors.white,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: Text(
                'API Integration',
                style: new TextStyle(color: Colors.white, fontSize: 19),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                side: BorderSide(width: 1, color: Colors.black12),
                //minimumSize: Size(mWidth * 0.88, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: Colors.white,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: Text(
                'Text stored in Local Storage',
                style: new TextStyle(color: Colors.white, fontSize: 19),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LocalStorage()));
              },
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                side: BorderSide(width: 1, color: Colors.black12),
                //minimumSize: Size(mWidth * 0.88, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: Colors.white,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: Text(
                'InternetSpeed',
                style: new TextStyle(color: Colors.white, fontSize: 19),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InternetSpeed()));
              },
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                side: BorderSide(width: 1, color: Colors.black12),
                //minimumSize: Size(mWidth * 0.88, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: Colors.white,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: Text(
                'Intro App',
                style: new TextStyle(color: Colors.white, fontSize: 19),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => IntroApp()));
              },
            ),
            ElevatedButton(
              style: TextButton.styleFrom(
                side: BorderSide(width: 1, color: Colors.black12),
                //minimumSize: Size(mWidth * 0.88, 55),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                primary: Colors.white,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 24),
              ),
              child: Text(
                'Quiz App',
                style: new TextStyle(color: Colors.white, fontSize: 19),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QuizApp()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
