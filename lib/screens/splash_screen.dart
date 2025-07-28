import 'package:flutter/material.dart';
import 'package:panda/assets/colors.dart';
import 'package:panda/widgets/header.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/languageSelection');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Center(
        child: Column(
          children: [
            Spacer(flex: 2),

            Header(),
            Text(
              'Покупай и продавай безопасно',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: primaryColor,
              ),
            ),
            Spacer(flex: 3),
            Text(
              'Проект для народа',
              style: TextStyle(
                color: Color(0xff9E9E9E),
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
