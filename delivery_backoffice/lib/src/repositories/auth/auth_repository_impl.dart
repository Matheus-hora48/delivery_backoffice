import 'dart:developer';

import 'package:delivery_backoffice/src/repositories/auth/auth_repository.dart';
import 'package:dio/dio.dart';

import '../../core/exceptions/repository_exceptions.dart';
import '../../core/exceptions/unauthorized_exceptions.dart';
import '../../core/rest_client/custom_dio.dart';
import '../../models/auth_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final CustomDio _dio;

  AuthRepositoryImpl(this._dio)

  @override
  Future<AuthModel> login(String email, String password) async {
    try {
  final result = await _dio.unauth().post('/auth', data: {
    'email': email,
    'password': password,
    'admin':true,
  },);
  return AuthModel.fromMap(result.data);
} on DioError catch (e) {
  if (e.response?.statusCode == 403) {
    log('Login ou senha inválidos', error: e,);
    throw UnauthorizedExceptions();
  }
  log('Erro ao realizar login', error: e,);
    throw RepositoryExceptions(message: 'Erro ao realizar login');
}
    
  }
}
