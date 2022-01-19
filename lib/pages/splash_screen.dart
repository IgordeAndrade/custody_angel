import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
              TextButton(
                onPressed: () => Get.to(const LoginPage()),
                child: const Text(
                  'Anjo da Guarda',
                  style: TextStyle(
                    color: Color(0xff952f25),
                    fontFamily: 'MedievalSharp',
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
