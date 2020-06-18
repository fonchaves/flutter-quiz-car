import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizcar/pages/splash_page.dart';

void main() {
  // Use to set colors of system icons
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarBrightness: Brightness.dark));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Car',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
      ),
      home: SplashScreen(),
    );
  }
}
