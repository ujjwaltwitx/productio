import 'package:flutter/material.dart';
import 'view/screens/customer_screen.dart';
import 'view/screens/start_screen.dart';
import 'view/screens/store_screen.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins",
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.8,
          ),
          bodyText1: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: StartScreen(),
      ),
    );
  }
}
