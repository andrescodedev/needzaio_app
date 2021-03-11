import 'package:flutter/material.dart';
import 'package:needzaio_app/core/routes/addresses_route.dart';

class ValidationUseCase extends LoginUseCase {
  final LoginRepository loginRepository;

  ValidationUseCase({@required this.loginRepository});

  @override
  String getUsernamesAndPhones() {
    return loginRepository.getUsernamesAndPhones();
  }
}
