import 'package:flutter/material.dart';
import 'package:meme_app/view/mainScreen.dart';
import 'package:meme_app/view/splashScreen.dart'; // Make sure this contains a SplashScreen widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showSplash = true;

  @override
  void initState() {
    super.initState();
    showSplashScreen();
  }

  void showSplashScreen() {
    Future.delayed(Duration(seconds: 5), () {
      setState(() {
        showSplash = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'A Meme App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: showSplash ? SplashScreen() : MainScreen(), // Ensure SplashScreen widget is used here
    );
  }
}
