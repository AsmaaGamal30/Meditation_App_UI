import 'package:daily_exercises_app/shared/constants/constants.dart';
import 'package:flutter/material.dart';
import 'layout/home_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo',
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: backGroundColor,
        textTheme: Theme.of(context).textTheme.apply(
            displayColor: textColor,

        )
      ),
      home: HomeLayOut(),
    );
  }
}
