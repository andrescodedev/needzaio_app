///
/// This class is the state manager of splash page.
///

import 'package:flutter/material.dart';

class SplashProvider with ChangeNotifier {
  bool _isEnabledGoToLoginButton;

  ///This function allows get current value to _isEnabledGoToLoginButton.
  bool get getIsEnabledGoToLoginButton => this._isEnabledGoToLoginButton;

  ///
  /// This function allows set a new value to _isEnabledGoToLoginButton.
  ///@param enable, is the new value.
  ///
  set getIsEnabledGoToLoginButton(bool enable) {
    this._isEnabledGoToLoginButton = enable;
    notifyListeners();
  }
}
