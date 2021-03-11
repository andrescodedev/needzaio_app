import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class ContactsText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(left: pageSize.width * 0.1),
      child: Text(
        PrincipalConstants.CONTACTS,
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }
}
