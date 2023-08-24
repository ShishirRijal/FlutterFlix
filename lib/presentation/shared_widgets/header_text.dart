import 'package:flutter/material.dart';

import '../resources/color_manager.dart';

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 0, 15, 10),
      child: Text(text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: ColorManager.white,
          )),
    );
  }
}
