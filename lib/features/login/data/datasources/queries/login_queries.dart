///
/// This class contents all queries to graphql api
/// related to user authentication.
///

class LoginQueries {
  ///
  ///@return String, this String contents the query that allows get
  /// user's information like username and phone.
  ///
  String getUsernamesAndPhones() {
    return """
      query {
        users {
          data {
            username
            phone
          }
        }
      }
    """;
  }
}
