import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class UsersUsecase extends UserUseCase {
  final UsersRepository repository;

  UsersUsecase({@required this.repository});

  @override
  String getAllUsers() {
    return repository.getAllUsers();
  }
}
