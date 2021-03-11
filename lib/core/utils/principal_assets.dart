///
/// This class allows us to have all the centralized images.
///

import 'package:flutter/material.dart';

class PrincipalAssets {
  static final String pathOfImages = 'assets/images/';
  static final String pathOfIcons = 'assets/icons/';

  static AssetImage getRobotImage() {
    return AssetImage(
      '${pathOfImages}robot.png',
    );
  }

  static AssetImage getHomeIcon() {
    return AssetImage('${pathOfIcons}home.png');
  }

  static AssetImage getUserIcon() {
    return AssetImage('${pathOfIcons}user.png');
  }

  static AssetImage getHeartIcon() {
    return AssetImage('${pathOfIcons}heart.png');
  }

  static AssetImage getMessageIcon() {
    return AssetImage('${pathOfIcons}message.png');
  }

  static AssetImage getProfileImage() {
    return AssetImage('${pathOfImages}profile.png');
  }
}
