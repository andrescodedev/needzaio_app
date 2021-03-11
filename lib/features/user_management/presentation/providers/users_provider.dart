///
/// This class is the state manager of home page.
///

import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class UsersProvider with ChangeNotifier {
  UsersUsecase _usersUsecase;

  UsersProvider() {
    _usersUsecase = UsersUsecase(
      repository: UsersRepositoryImplements(
        usersQueries: UsersQueries(),
      ),
    );
  }

  ///
  /// This function allows get the query through the layers.
  ///@return String, is the query.
  ///
  String giveAllUsers() {
    return _usersUsecase.repository.getAllUsers();
  }
}
