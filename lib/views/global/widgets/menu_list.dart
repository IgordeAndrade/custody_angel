import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'menu_button.dart';

class MenuList extends StatelessWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Map<String, Function()> buttons = {
      'Orações': () => Get.toNamed('/oracoes'),
      'Santo do dia': () => () {},
      'Liturgia diária': () => () {},
      'Novenas': () => () {},
      'Bíblia Sagrada': () => Get.toNamed('/bibliaPage'),
      'Catecismo da Igreja': () => () {},
      'Notícias Católicas': () => () {},
      'Reflexões': () => () {},
      'Perfil': () => () {},
    };

    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: buttons.length,
      itemBuilder: (BuildContext context, int index) {
        return MenuButton(
          text: buttons.keys.toList()[index],
          onTap: buttons.values.toList()[index],
        );
      },
    );
  }
}
