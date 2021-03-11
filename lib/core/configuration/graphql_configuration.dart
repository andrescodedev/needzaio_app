///
/// This class allows us to connect to the graphql api
///

import "package:flutter/material.dart";
import 'package:needzaio_app/core/routes/addresses_route.dart';

class GraphQLConfiguration {
  static HttpLink httpLink = HttpLink(
    PrincipalConstants.GRAPHQL_SERVER,
  );

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(
      link: httpLink,
      cache: GraphQLCache(store: InMemoryStore()),
    ),
  );
}
