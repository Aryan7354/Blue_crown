import 'dart:async';
import 'package:blue_crown/Daypicker.dart';
import 'package:blue_crown/Month.dart';
import 'package:blue_crown/login.dart';
import 'package:blue_crown/login_selection.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
      // Set SplashScreen as the initial route
      routes: {
        '/selection': (context) =>Login_Selection(),
        // Define routes for navigation
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  _navigateToNextScreen() {
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed(
          '/selection'); // Navigate to the next screen after 3 seconds
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Image.asset(
            'assets/images/mainLogo.png',
            width: 230.57,
            height: 118.01,
            fit: BoxFit.fill,
          )),
        ],
      ),
    ));
  }
}
