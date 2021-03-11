import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class LoginRepositoryImplement extends LoginRepository {
  final LoginQueries loginQueries;

  LoginRepositoryImplement({@required this.loginQueries});

  @override
  String getUsernamesAndPhones() {
    return loginQueries.getUsernamesAndPhones();
  }
}
