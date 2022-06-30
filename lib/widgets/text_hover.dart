import 'package:flutter/material.dart';
import 'package:myportfolio/constants.dart';

import 'util/on_hover.dart';

class TextHover extends StatelessWidget {
  final String text;

  TextHover({required this.text});

  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHovered) {
      final color = isHovered ? textColor : hoverTextColor;
      return TextButton(
          onPressed: () => null,
          child: Text(
            text,
            style: TextStyle(
                color: color, fontSize: 18, fontWeight: FontWeight.bold),
          ));
    });
  }
}
