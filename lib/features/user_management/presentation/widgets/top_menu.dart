import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size pageSize = MediaQuery.of(context).size;

    return Container(
      height: pageSize.height * 0.1,
      width: pageSize.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _getMenuHomeItem(context),
          _getOtherMenuItems(PrincipalAssets.getMessageIcon()),
          _getOtherMenuItems(PrincipalAssets.getHeartIcon()),
          _getOtherMenuItems(PrincipalAssets.getUserIcon()),
        ],
      ),
    );
  }

  Widget _getMenuHomeItem(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Row(
        children: [
          Image(image: PrincipalAssets.getHomeIcon()),
          SizedBox(
            width: 10.0,
          ),
          Text('Home'),
        ],
      ),
    );
  }

  Widget _getOtherMenuItems(AssetImage image) {
    return Image(
      image: image,
    );
  }
}
