import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    Size pageSize = MediaQuery.of(context).size;

    return Query(
      options: QueryOptions(
        document: gql(loginProvider.giveUserNamesAndPhoneList()),
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (result.data.isNotEmpty) {
          List userNamesAndPhonesList = result.data['users']['data'];

          return Container(
            height: pageSize.height * 0.6,
            width: pageSize.width,
            padding: EdgeInsets.symmetric(horizontal: 35.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100.0),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child:
                      _getUsernameField(loginProvider, userNamesAndPhonesList),
                ),
                Flexible(
                  child: _getPhoneField(loginProvider, userNamesAndPhonesList),
                ),
                Flexible(
                  child: _getLoginButton(context, loginProvider),
                ),
                Flexible(child: _getFooter()),
              ],
            ),
          );
        } else {
          return Text('');
        }
      },
    );
  }

  CustomButtonsForSplashAndLoginPages _getLoginButton(
      BuildContext context, LoginProvider loginProvider) {
    return CustomButtonsForSplashAndLoginPages(
      buttonText: PrincipalConstants.SIGN_IN,
      buttonColor: (loginProvider.validateSignInButton == true)
          ? Theme.of(context).primaryColor
          : Colors.grey.withOpacity(0.3),
      onPressed: (loginProvider.validateSignInButton == true)
          ? () {
              Navigator.pushNamed(context, '/home');
            }
          : null,
    );
  }

  FormTextFields _getPhoneField(
      LoginProvider loginProvider, List userNamesAndPhonesList) {
    return FormTextFields(
      textFieldIcon: Icons.lock_outlined,
      textFieldLabel: 'Password',
      errorText: loginProvider.getPasswordErrorText,
      borderColor: loginProvider.getPasswordBorderColor,
      focusColor: loginProvider.getPasswordFocusColor,
      textColor: loginProvider.getPasswordTextColor,
      obscureText: true,
      onChanged: (String value) {
        for (var user in userNamesAndPhonesList) {
          String validatedPhone = PhoneValidate.phoneValidation(user['phone']);
          if (value == validatedPhone) {
            loginProvider.getPasswordErrorText = 'password correcto';
            loginProvider.getPasswordBorderColor = Colors.green;
            loginProvider.getPasswordFocusColor = Colors.green;
            loginProvider.getPasswordTextColor = Colors.green;
            loginProvider.validateCorrectPhone = true;
            validateSignInButton(loginProvider);
            print('$value correcto');
            break;
          } else {
            loginProvider.getPasswordErrorText = 'password incorrecto';
            loginProvider.getPasswordBorderColor = Colors.red;
            loginProvider.getPasswordFocusColor = Colors.red;
            loginProvider.getPasswordTextColor = Colors.red;
            loginProvider.validateCorrectPhone = false;
            validateSignInButton(loginProvider);
          }
        }
        print('for finalizadod');
      },
    );
  }

  FormTextFields _getUsernameField(
      LoginProvider loginProvider, List userNamesAndPhonesList) {
    return FormTextFields(
      textFieldIcon: Icons.person_outlined,
      textFieldLabel: 'Username',
      errorText: loginProvider.getUsernameErrorText,
      borderColor: loginProvider.getUsernameBorderColor,
      focusColor: loginProvider.getUsernameFocusColor,
      textColor: loginProvider.getUsernameTextColor,
      onChanged: (String value) {
        for (var user in userNamesAndPhonesList) {
          if (value == user['username']) {
            loginProvider.getUsernameErrorText = 'username correcto';
            loginProvider.getUsernameBorderColor = Colors.green;
            loginProvider.getUsernameFocusColor = Colors.green;
            loginProvider.getUsernameTextColor = Colors.green;
            loginProvider.validateCorrectUserName = true;
            validateSignInButton(loginProvider);
            print('$value correcto');
            break;
          } else {
            loginProvider.getUsernameErrorText = 'username incorrecto';
            loginProvider.getUsernameBorderColor = Colors.red;
            loginProvider.getUsernameFocusColor = Colors.red;
            loginProvider.getUsernameTextColor = Colors.red;
            loginProvider.validateCorrectUserName = false;
            validateSignInButton(loginProvider);
          }
        }
        print('for finalizado');
      },
    );
  }

  Widget _getFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          PrincipalConstants.DONT_HAVE_AN_ACCOUNT,
          style: GoogleFonts.montserrat(
            color: PrincipalConstants.COLORFIVE.withOpacity(0.5),
            fontSize: 14.0,
          ),
        ),
        Text(
          PrincipalConstants.SIGN_UP,
          style: GoogleFonts.montserrat(
            color: PrincipalConstants.COLORONE,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  ///
  /// This function allows set to availability of signin button.
  /// @Param loginProvider, this is the state manager.
  ///
  void validateSignInButton(LoginProvider loginProvider) {
    if (loginProvider.validateCorrectUserName == true &&
        loginProvider.validateCorrectPhone == true) {
      loginProvider.validateSignInButton = true;
    } else {
      loginProvider.validateSignInButton = false;
    }
  }
}
