import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class CustomButtonsForSplashAndLoginPages extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color buttonColor;

  CustomButtonsForSplashAndLoginPages(
      {@required this.buttonText,
      @required this.onPressed,
      this.buttonColor = PrincipalConstants.COLORTHREE});

  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;

    return ElevatedButton(
      onPressed: onPressed,
      child: Text(buttonText),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(
            horizontal: pageSize.width * 0.3,
            vertical: pageSize.height * 0.02,
          ),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          StadiumBorder(),
        ),
        backgroundColor: MaterialStateProperty.all<Color>((buttonColor)),
        foregroundColor:
            MaterialStateProperty.all<Color>(PrincipalConstants.COLORTWO),
        textStyle: MaterialStateProperty.all<TextStyle>(
            Theme.of(context).textTheme.headline5),
      ),
    );
  }
}
