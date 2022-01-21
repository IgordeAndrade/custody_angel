import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((value) => Get.toNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFdfd3ba),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/angel.png',
                scale: 1.5,
              ),
              const Text(
                'Anjo da Guarda',
                style: TextStyle(
                  color: Color(0xff952f25),
                  fontFamily: 'MedievalSharp',
                  fontSize: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
