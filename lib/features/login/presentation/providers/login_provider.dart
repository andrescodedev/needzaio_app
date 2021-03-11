///
/// This class is the state manager of login page.
///

import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class LoginProvider with ChangeNotifier {
  ValidationUseCase _validationUseCase;

  List _userNamesAndPhonesList;

  bool _isCorrectUserName = false;
  bool _isCorrectPhone = false;
  bool _isEnableSignInButton = false;

  String _usernameErrorText, _passwordErrorText;

  Color _usernameBorderColor = Color(0xFF000000),
      _usernameTextColor,
      _usernameFocusColor;
  Color _passwordBorderColor = Color(0xFF000000),
      _passwordTextColor,
      _passwordFocusColor;

  ///This function allows get current value to _isCorrectUserName.
  bool get validateCorrectUserName => this._isCorrectUserName;

  ///This function allows get current value to _isCorrectPhone.
  bool get validateCorrectPhone => this._isCorrectPhone;

  ///This function allows get current value to _isEnableSignInButton.
  bool get validateSignInButton => this._isEnableSignInButton;

  ///This function allows get current value to _usernameErrorText.
  String get getUsernameErrorText => this._usernameErrorText;

  ///This function allows get current value to _passwordErrorText.
  String get getPasswordErrorText => this._passwordErrorText;

  ///This function allows get current value to _usernameBorderColor.
  Color get getUsernameBorderColor => this._usernameBorderColor;

  ///This function allows get current value to _usernameTextColor.
  Color get getUsernameTextColor => this._usernameTextColor;

  ///This function allows get current value to _usernameFocusColor.
  Color get getUsernameFocusColor => this._usernameFocusColor;

  ///This function allows get current value to _passwordBorderColor.
  Color get getPasswordBorderColor => this._passwordBorderColor;

  ///This function allows get current value to _passwordTextColor.
  Color get getPasswordTextColor => this._passwordTextColor;

  ///This function allows get current value to _passwordFocusColor.
  Color get getPasswordFocusColor => this._passwordFocusColor;

  ///This function allows get current value to _userNamesAndPhonesList.
  List get getUserNamesAndPhonesList => this._userNamesAndPhonesList;

  LoginProvider() {
    _validationUseCase = ValidationUseCase(
      loginRepository: LoginRepositoryImplement(
        loginQueries: LoginQueries(),
      ),
    );
  }

  ///
  /// This function allows set a new value to _isCorrectUserName.
  ///@param value, is the new value.
  ///
  set validateCorrectUserName(bool value) {
    this._isCorrectUserName = value;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _isCorrectPhone.
  ///@param value, is the new value.
  ///
  set validateCorrectPhone(bool value) {
    this._isCorrectPhone = value;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _isEnableSignInButton.
  ///@param value, is the new value.
  ///
  set validateSignInButton(bool value) {
    this._isEnableSignInButton = value;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _usernameErrorText.
  ///@param errorText, is the new value.
  ///
  set getUsernameErrorText(String errorText) {
    this._usernameErrorText = errorText;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _passwordErrorText.
  ///@param errorText, is the new value.
  ///
  set getPasswordErrorText(String errorText) {
    this._passwordErrorText = errorText;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _usernameBorderColor.
  ///@param color, is the new value.
  ///
  set getUsernameBorderColor(Color color) {
    this._usernameBorderColor = color;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _usernameTextColor.
  ///@param color, is the new value.
  ///
  set getUsernameTextColor(Color color) {
    this._usernameTextColor = color;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _usernameFocusColor.
  ///@param color, is the new value.
  ///
  set getUsernameFocusColor(Color color) {
    this._usernameFocusColor = color;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _passwordBorderColor.
  ///@param color, is the new value.
  ///
  set getPasswordBorderColor(Color color) {
    this._passwordBorderColor = color;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _passwordTextColor.
  ///@param color, is the new value.
  ///
  set getPasswordTextColor(Color color) {
    this._passwordTextColor = color;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _passwordFocusColor.
  ///@param color, is the new value.
  ///
  set getPasswordFocusColor(Color color) {
    this._passwordFocusColor = color;
    notifyListeners();
  }

  ///
  /// This function allows set a new value to _userNamesAndPhonesList.
  ///@param list, is the new value.
  ///
  set getUserNamesAndPhonesList(List list) {
    this._userNamesAndPhonesList = list;
    notifyListeners();
  }

  ///
  /// This function allows get the query through the layers.
  ///@return String, is the query.
  ///
  String giveUserNamesAndPhoneList() {
    return _validationUseCase.loginRepository.getUsernamesAndPhones();
  }
}
