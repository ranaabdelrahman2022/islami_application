import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/core/theme/application_theme.dart';
import 'package:islami_app/layout/home_layout.dart';
import 'package:islami_app/moduls/quran/quran_details_view.dart';
import 'package:islami_app/moduls/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeLayOut.routeName: (context) => HomeLayOut(),
        QuranDetailsView.routeName: (context) => const QuranDetailsView(),
      },
    );
  }
}
