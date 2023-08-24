import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class HeaderText extends StatelessWidget {
  const HeaderText(
    this.text, {
    this.color = ColorManager.white,
    Key? key,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: Text(text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: color,
          )),
    );
  }
}
