import 'package:belajar_flutter_1/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light));

    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
          (route) => false);
    });

    return Scaffold(
      body: Container(
        color: Colors.deepPurple,
        child: Center(
            child: RichText(
          text: TextSpan(
            text: 'Belajar Flutter 1',
            style: GoogleFonts.manrope(fontSize: 30, color: Colors.white),
          ),
        )),
      ),
    );
  }
}
