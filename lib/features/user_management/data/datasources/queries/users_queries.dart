///
/// This class contents all queries to graphql api
/// related to user's information.
///

class UsersQueries {
  ///
  ///@return String, this String contents the query that allows get
  /// complete user's information.
  ///
  String getAllUsers() {
    return """
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
    """;
  }
}
