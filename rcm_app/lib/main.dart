import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rcm_app/pages/homepage.dart';
import 'package:rcm_app/pages/loginPage.dart';
import 'package:rcm_app/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Colors.black),
            // textTheme: ,    this text theme is deprecated now it is not used.
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          )

          // primaryTextTheme: GoogleFonts.latoTextTheme()
          ),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
