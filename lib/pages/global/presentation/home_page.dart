import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/default_page.dart';
import 'widgets/default_title.dart';
import 'widgets/menu_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double iconSize = 150;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const DefaultTitle(
          fontSize: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
            tooltip: 'Notificações',
          ),
        ],
      ),
      body: DefaultPage(
        body: Container(),
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
