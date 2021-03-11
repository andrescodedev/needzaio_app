import 'package:needzaio_app/core/routes/addresses_route.dart';
import 'package:test/test.dart';

main() {
  group('Splash Test, ', () {
    test('Disable SignIn Button', () {
      final splashProvider = SplashProvider();
      expect(splashProvider.getIsEnabledGoToLoginButton = false,
          splashProvider.getIsEnabledGoToLoginButton);
    });

    test('Enable SignIn Button', () {
      final splashProvider = SplashProvider();
      expect(splashProvider.getIsEnabledGoToLoginButton = true,
          splashProvider.getIsEnabledGoToLoginButton);
    });
  });
}
