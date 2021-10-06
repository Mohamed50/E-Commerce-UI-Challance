import 'package:charachters_app/utils/binding.dart';
import 'package:charachters_app/view/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Test",
      initialBinding: Binding(),
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.grey[900],
        accentColor: Colors.grey[900],
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Color(0xFF171717),
          textTheme: GoogleFonts.rationaleTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        textTheme: GoogleFonts.rationaleTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
