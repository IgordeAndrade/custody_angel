import 'package:custody_angel/pages/login_page.dart';
import 'package:custody_angel/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
            name: '/',
            page: () => const SplashScreen(),
            children: [GetPage(name: '/login', page: () => const LoginPage())]),
      ],
    );
  }
}
