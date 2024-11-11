import 'package:flutter/material.dart';
import 'package:amimobile6/pages/welcome.dart';

void main() async {
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          textTheme: ButtonTextTheme.primary,
        ),
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        // '/acceuil2': (context) => EcommercePage(),
        // '/account': (context) => ComptePage(),
      },
    );
  }
}
