import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class UsersRepositoryImplements extends UsersRepository {
  final UsersQueries usersQueries;

  UsersRepositoryImplements({@required this.usersQueries});

  @override
  String getAllUsers() {
    return usersQueries.getAllUsers();
  }
}
