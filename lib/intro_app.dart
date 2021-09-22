import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(IntroApp());
}

class IntroApp extends StatelessWidget {
  const IntroApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[400],
        body: SafeArea(
          child: Container(
            color: Colors.teal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 80.0,
                  backgroundImage: AssetImage('images/surya.jpg'),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Surya Bhan Singh',
                  style: TextStyle(
                    fontFamily: GoogleFonts.dancingScript().fontFamily,
                    fontSize: 36.0,
                    fontWeight: FontWeight.normal,
                    letterSpacing: 2.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white70,
                    fontFamily: GoogleFonts.cairo().fontFamily,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 30.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 22,
                      color: Colors.red,
                    ),
                    title: Text(
                      '+91 8448806152',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.0,
                        // fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 22,
                      color: Colors.red,
                    ),
                    title: Text(
                      'its.v.surya9@gmail.com',
                      style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 1.0,
                        // fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
