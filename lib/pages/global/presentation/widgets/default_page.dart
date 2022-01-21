import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  const DefaultPage({
    Key? key,
    required this.body,
    this.title,
  }) : super(key: key);

  final Widget body;
  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xFFdfd3ba),
        child: body,
      ),
    );
  }
}
