import 'dart:developer';

import 'package:mobx/mobx.dart';

import '../../core/exceptions/unauthorized_exceptions.dart';
import '../../services/auth/login_service.dart';
part 'login_controller.g.dart';

enum LoginStateStatus {
  initial,
  loading,
  success,
  error,
}

class LoginController = LoginControllerBase with _$LoginController;

abstract class LoginControllerBase with Store {
  final LoginService _loginService;

  @readonly
  LoginStateStatus _loginStatus = LoginStateStatus.initial;

  LoginControllerBase(this._loginService);

  @readonly
  String? _errorMessage;

  @action
  Future<void> login(String email, String pasword) async {
    try {
      _loginStatus = LoginStateStatus.loading;
      await _loginService.execute(email, pasword);
      _loginStatus = LoginStateStatus.success;
    } on UnauthorizedExceptions catch (e) {
      _errorMessage = 'Login ou senha inválido';
      _loginStatus = LoginStateStatus.error;
    } catch (e) {
      log('Error ao realizar login', error: e);
      _errorMessage = 'Tente novamente mais tarde';
      _loginStatus = LoginStateStatus.error;
    }
  }
}
