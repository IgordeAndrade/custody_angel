import 'package:flutter/material.dart';

class DefaultTitle extends StatelessWidget {
  const DefaultTitle({Key? key, required this.fontSize}) : super(key: key);

  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Anjo da Guarda',
      style: TextStyle(
        color: Colors.black54,
        fontFamily: 'MedievalSharp',
        fontSize: fontSize,
      ),
    );
  }
}
