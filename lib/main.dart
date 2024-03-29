
import 'package:fetch_firebase/test_screen/another_mapScreen.dart';
import 'package:fetch_firebase/fetch_data.dart';
import 'package:fetch_firebase/map_screen.dart';
import 'package:fetch_firebase/test_screen/show_data.dart';
import 'package:fetch_firebase/test_screen/timer_test.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SUST BUS Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 147, 229, 250),
          brightness: Brightness.dark,
          surface: const Color.fromARGB(255, 42, 51, 59),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 50, 58, 60),
      ),
      home: const ReadData()
    );
  }
}