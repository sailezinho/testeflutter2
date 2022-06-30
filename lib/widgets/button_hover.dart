import 'package:flutter/material.dart';

import 'util/on_hover.dart';

class ButtonHover extends StatelessWidget {
  final Color hoverColor;
  final Color normalColor;

  final Text text;

  ButtonHover(
      {required this.text,
      required this.hoverColor,
      required this.normalColor});

  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHovered) {
      final color = isHovered ? hoverColor : normalColor;
      return MaterialButton(
        elevation: 12,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          child: text,
        ),
      );
    });
  }
}
