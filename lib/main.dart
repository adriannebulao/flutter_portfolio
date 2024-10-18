import 'package:flutter/material.dart';
import 'package:flutter_portfolio/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const darkColor = Color(0xff23283E);
    const darkText1 = Color(0xffCDCDFF);
    const darkText2 = Color(0xff90A0D9);
    const darkText3 = Color(0xffBDBDDD);
    const darkSkills = Color(0xff2A2F4C);

    const lightColor = Color(0xffFCFCFC);
    const lightText1 = Color(0xff2978B5);
    const lightText2 = Color(0xff444444);
    const lightText3 = Color(0xff555555);

    return MaterialApp(
      title: "Adrianne Bulao",
      theme: ThemeData(
          scaffoldBackgroundColor: darkColor,
          textTheme: GoogleFonts.poppinsTextTheme()),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => const HomeScreen()},
    );
  }
}
