import 'package:needzaio_app/core/configuration/graphql_configuration.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';
import 'package:test/test.dart';

main() {
  group('Graphql test, ', () {
    test('validate http link', () {
      final graphql = GraphQLConfiguration();

      expect(graphql.client.value.link.hashCode,
          GraphQLConfiguration.httpLink.hashCode);
    });
  });
}
