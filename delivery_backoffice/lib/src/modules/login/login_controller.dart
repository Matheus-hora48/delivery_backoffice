import 'package:mobx/mobx.dart';

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
  LoginStateStatus _status = LoginStateStatus.initial;

  LoginControllerBase(this._loginService);

  Future<void> login(String email, String pasword){
    
  }
}
