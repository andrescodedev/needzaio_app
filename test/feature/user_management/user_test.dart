import 'package:needzaio_app/core/routes/addresses_route.dart';
import 'package:test/test.dart';

main() {
  group('Users Test, ', () {
    test('Validate Users Query', () {
      final userQueries = UsersQueries();

      String query = userQueries.getAllUsers();

      expect(query, """
      query {
        users {
          data {
            name
            email
            albums {
              data {
                photos {
                  data {
                    url
                  }
                }
              }
            }
          }
        }
      }
    """);
    });
  });
}
