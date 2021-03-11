import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    final splashProvider = Provider.of<SplashProvider>(context);
    requestPermissionLocation(splashProvider);

    Size pageSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: pageSize.height,
        width: pageSize.width,
        color: Theme.of(context).primaryColor,
        child: Stack(
          children: [
            Container(
              height: pageSize.height * 0.5,
              width: pageSize.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              //color: Colors.red,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: CustomTextsForSplashAndLoginPages(
                          text: PrincipalConstants.SPLASH_TITLE),
                    ),
                    Flexible(
                      child: SingleChildScrollView(
                        child: CustomTextsForSplashAndLoginPages(
                          text: PrincipalConstants.SPLASH_DESCRIPTION,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                      ),
                    ),
                    Flexible(
                      child: CustomButtonsForSplashAndLoginPages(
                        buttonText: PrincipalConstants.GO_TO_LOGIN,
                        buttonColor:
                            (splashProvider.getIsEnabledGoToLoginButton == true)
                                ? PrincipalConstants.COLORTHREE
                                : Colors.grey.withOpacity(0.3),
                        onPressed:
                            (splashProvider.getIsEnabledGoToLoginButton == true)
                                ? () {
                                    Navigator.pushReplacementNamed(
                                        context, '/login');
                                  }
                                : null,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              child: Container(
                  constraints: BoxConstraints(
                    minHeight: pageSize.height * 0.9,
                    maxHeight: pageSize.height * 0.9,
                  ),
                  child: SingleChildScrollView(
                      child: BackgroundImage(imageFit: BoxFit.cover))),
              bottom: pageSize.height * -0.33,
              left: pageSize.width * -0.2,
              right: pageSize.width * -0.3,
            ),
          ],
        ),
      ),
    );
  }

  ///
  /// This function allows to request location permissions from the user.
  /// @Param splashProvider, this is the state manager.
  ///
  void requestPermissionLocation(SplashProvider splashProvider) async {
    Permission permission = Permission.locationWhenInUse;

    if (await permission.request().isGranted) {
      splashProvider.getIsEnabledGoToLoginButton = true;
    }
  }
}
