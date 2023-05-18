import 'dart:developer';

import 'package:delivery_backoffice/src/repositories/user/user_repository.dart';
import 'package:dio/dio.dart';

import '../../core/exceptions/repository_exceptions.dart';
import '../../core/rest_client/custom_dio.dart';
import '../../models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  final CustomDio _dio;

  UserRepositoryImpl(this._dio);

  @override
  Future<UserModel> getBuyId(int id) async {
    try {
      final userReponse = await _dio.get('/users/$id');
      return UserModel.fromMap(userReponse.data);
    } on DioError catch (e, s) {
      log('Erro ao buscar o usuário', error: e, stackTrace: s);
      throw RepositoryExceptions(message: 'Erro ao buscar o usuário');
    }
  }
}
