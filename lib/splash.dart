import 'package:flutter/material.dart';
import 'package:real_time_chat_app/chat_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changeScreen() {
    Future.delayed(const Duration(seconds: 3)).then((_) {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => const ChatScreen(),
      ));
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Image.asset(
          'assets/logo/appLogo.png',
          width: 400,
        )));
  }
}
