import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff952f25),
        centerTitle: true,
        title: const Text(
          'Anjo da Guarda',
          style: TextStyle(
            color: Colors.black54,
            fontFamily: 'MedievalSharp',
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFdfd3ba),
        child: body,
      ),
    );
  }
}
