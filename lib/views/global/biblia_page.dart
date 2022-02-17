import 'package:custody_angel/controllers/biblia_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'widgets/default_page.dart';

class BibliaPage extends GetView<BibliaController> {
  const BibliaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: const Color(0xFFdfd3ba),
          padding: const EdgeInsets.all(10),
          child: const Text(
              'controller.bibliaList[e].conteudo![0].capitulo!.toString()'),
        ),
      ),
      title: 'Bíblia Sagrada',
      titleFontSize: 25,
    );
  }
}
