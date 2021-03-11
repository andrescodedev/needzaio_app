import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';
//import 'package:needzaio_app/core/routes/addresses_route.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: pageSize.height * 0.15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ContactsText(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    child: UsersInformation(),
                  ),
                ],
              ),
            ),
            TopMenu(),
          ],
        ),
      ),
    );
  }
}
