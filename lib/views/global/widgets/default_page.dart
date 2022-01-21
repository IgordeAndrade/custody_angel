import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'menu_list.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({
    Key? key,
    required this.body,
    required this.title,
    required this.titleFontSize,
  }) : super(key: key);

  final Widget body;
  final String title;
  final double titleFontSize;

  @override
  Widget build(BuildContext context) {
    const double iconSize = 150;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black54,
            fontFamily: 'MedievalSharp',
            fontSize: titleFontSize,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            tooltip: 'Notificações',
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFdfd3ba),
        child: body,
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFFdfd3ba),
        semanticLabel: 'Menu',
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: IconButton(
                iconSize: iconSize,
                onPressed: () => Get.toNamed('/homePage'),
                icon: Image.asset(
                  'assets/images/prayer.png',
                  width: iconSize,
                ),
              ),
              decoration: const BoxDecoration(
                color: Color(0xff952f25),
              ),
            ),
            const MenuList(),
          ],
        ),
      ),
    );
  }
}
