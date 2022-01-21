import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'global/widgets/default_page.dart';
import 'global/widgets/default_title.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Image.asset(
              'assets/images/angel.png',
              scale: 4.5,
            ),
          ),
          const DefaultTitle(
            fontSize: 20,
          ),
          const SizedBox(
            height: 15,
          ),
          Form(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.email),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      icon: Icon(
                        Icons.vpn_key,
                      ),
                    ),
                    obscureText: true,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Recuperar minha senha',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/homePage');
                    },
                    child: const Text('Entrar'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
