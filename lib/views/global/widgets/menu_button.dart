import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({required this.text, Key? key, required this.onTap})
      : super(key: key);

  final String text;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
      child: ListTile(
        onTap: onTap,
        title: Text(text),
        hoverColor: const Color(0xff952f25),
      ),
    );
  }
}
