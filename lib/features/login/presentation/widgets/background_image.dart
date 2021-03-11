import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class BackgroundImage extends StatelessWidget {
  final BoxFit imageFit;

  BackgroundImage({this.imageFit = BoxFit.contain});

  @override
  Widget build(BuildContext context) {
    //Size pageSize = MediaQuery.of(context).size;

    return Image(
      image: PrincipalAssets.getRobotImage(),
      fit: imageFit,
    );
  }
}
