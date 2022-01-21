import 'package:custody_angel/views/global/home_page.dart';
import 'package:custody_angel/views/login_page.dart';
import 'package:custody_angel/views/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeData tema = ThemeData();
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: const Color(0xff952f25),
        ),
      ),
      getPages: [
        GetPage(
          name: '/',
          page: () => const SplashScreen(),
          children: [
            GetPage(
              name: '/login',
              page: () => const LoginPage(),
            ),
            GetPage(
              name: '/homePage',
              page: () => const HomePage(),
            ),
          ],
        ),
      ],
    );
  }
}
