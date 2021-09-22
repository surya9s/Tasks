import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:api_demo9/task_list.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xff145C95),
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
        ),
        home: AnimatedSplashScreen(
          splashIconSize: 250,
          duration: 2000,
          splash: Column(
            children: [
              Expanded(
                child: Image.asset(
                  'asset/twitter.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ],
          ),
          nextScreen: TaskList(),
          splashTransition: SplashTransition.fadeTransition,
          //pageTransitionType: PageTransitionType.scale,
          backgroundColor: Colors.white,
        ));
  }
}
