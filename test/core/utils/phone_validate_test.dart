import 'package:needzaio_app/core/routes/addresses_route.dart';
import 'package:test/test.dart';

main() {
  group('Phone validate test', () {
    test('Delete this characters .()-x and white space ', () {
      expect(PhoneValidate.phoneValidation('(775)976-6794 x41206'),
          '775976679441206');
    });
  });
}
