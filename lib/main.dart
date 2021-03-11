import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

GraphQLConfiguration graphQLConfiguration = GraphQLConfiguration();

void main() {
  runApp(GraphQLProvider(
    child: MyApp(),
    client: graphQLConfiguration.client,
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UsersProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SplashProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Needzaio App',
        debugShowCheckedModeBanner: false,
        theme: PrincipalTheme().mainTheme(),
        initialRoute: '/',
        routes: PagesRoute.pagesRoute(),
        //home: HomePage(),
      ),
    );
  }
}
