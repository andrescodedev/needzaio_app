import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: pageSize.height,
              width: pageSize.width,
              color: Theme.of(context).primaryColor,
            ),
            Positioned(
              bottom: 0.0,
              child: LoginForm(),
            ),
            Positioned(
              left: pageSize.width * 0.2,
              child: SafeArea(
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: pageSize.height * 0.45,
                    maxHeight: pageSize.height * 0.45,
                  ),
                  child: BackgroundImage(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
