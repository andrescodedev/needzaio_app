///
/// This class contains all the routes of the pages of the app.
///
import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class PagesRoute {
  static Map<String, WidgetBuilder> pagesRoute() {
    return <String, WidgetBuilder>{
      '/': (context) => SplashPage(),
      '/login': (context) => LoginPage(),
      '/home': (context) => HomePage(),
    };
  }
}
