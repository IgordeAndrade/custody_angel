import 'package:flutter/material.dart';

import 'global/presentation/widgets/default_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      body: Column(
        children: [
          Image.asset(
            'assets/images/angel.png',
            scale: 4.5,
          ),
          SizedBox(
            width: 380,
            child: TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
