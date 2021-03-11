import 'package:flutter/material.dart';

class CustomTextsForSplashAndLoginPages extends StatelessWidget {
  final String text;
  final TextStyle style;
  final TextAlign align;

  CustomTextsForSplashAndLoginPages({
    @required this.text,
    this.style,
    this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: (align != null) ? align : TextAlign.center,
      style: (style != null) ? style : Theme.of(context).textTheme.headline4,
    );
  }
}
