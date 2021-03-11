import 'package:needzaio_app/core/routes/addresses_route.dart';
import 'package:test/test.dart';

main() {
  group('Login Test, ', () {
    test('Validate login query', () {
      final loginQueries = LoginQueries();

      expect(loginQueries.getUsernamesAndPhones().isNotEmpty, true);
    });

    test('Validate SignIn Button on true', () {
      final loginForm = LoginForm();
      final loginProvider = LoginProvider();

      loginForm.validateSignInButton(loginProvider);

      expect(
          (loginProvider.validateCorrectUserName == true &&
              loginProvider.validateCorrectPhone == true),
          loginProvider.validateSignInButton == true);
    });

    test('Validate SignIn Button on false', () {
      final loginForm = LoginForm();
      final loginProvider = LoginProvider();

      loginForm.validateSignInButton(loginProvider);

      expect(
          (loginProvider.validateCorrectUserName == false ||
              loginProvider.validateCorrectPhone == false),
          loginProvider.validateSignInButton == false);
    });

    test('Get Usernames And Phone List', () {
      final loginProvider = LoginProvider();

      expect(
          loginProvider.getUserNamesAndPhonesList = [
            {
              'username': 'andres',
              'phone': '5236985418',
            },
            {
              'username': 'felipe',
              'phone': '7859632147',
            },
          ],
          loginProvider.getUserNamesAndPhonesList);
    });
  });
}
