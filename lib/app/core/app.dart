import 'package:flutter/material.dart';
import '../login/presenters/pages/login_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Shatrip',
        theme: ThemeData(
          fontFamily: "Poppins",
          primarySwatch: Colors.blue,
          primaryColor: Color(0xFF1F72EF),
          accentColor: Color(0xFF6795DB),
          textTheme: TextTheme(
            headline2: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.w300,
              color: Colors.white,
              height: 1.5,
            ),
          ),
        ),
        home: LoginPage());
  }
}
