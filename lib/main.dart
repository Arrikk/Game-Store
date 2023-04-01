import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:game_app/constants/colors.dart';
import 'package:game_app/screens/home/home.dart';

void main() {
  runApp(const GameApp());
}

class GameApp extends StatelessWidget {
  const GameApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return MaterialApp(
      title: "Game Store",
      debugShowCheckedModeBanner: false,
      color: kPrimary,
      home: HomePage(),
    );
  }
}
