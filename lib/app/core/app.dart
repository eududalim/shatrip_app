import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shatrip/app/core/routes/app_pages.dart';
import 'package:shatrip/app/core/routes/app_routes.dart';
import '../login/ui/pages/first_page.dart';
import 'package:shatrip/app/login/ui/pages/first_page.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
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
            bodyText1: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w300,
            )),
      ),
      getPages: AppPages.routes,
      initialRoute: Routes.INITIAL,
    );
    // home: FirstPage());
  }
}
