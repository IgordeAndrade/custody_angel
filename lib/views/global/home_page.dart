import 'package:flutter/material.dart';

import 'widgets/default_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      body: Container(),
      title: 'Anjo da Guarda',
      titleFontSize: 30,
    );
  }
}
