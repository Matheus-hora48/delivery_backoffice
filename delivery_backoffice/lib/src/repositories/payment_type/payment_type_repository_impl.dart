import 'dart:developer';

import 'package:delivery_backoffice/src/repositories/payment_type/payment_type_repository.dart';
import 'package:dio/dio.dart';

import '../../core/exceptions/repository_exceptions.dart';
import '../../core/rest_client/custom_dio.dart';
import '../../models/payment_type_model.dart';

class PaymentTypeRepositoryImpl implements PaymentTypeRepository {
  final CustomDio _dio;

  PaymentTypeRepositoryImpl(this._dio);

  @override
  Future<List<PaymentTypeModel>> findAll(bool? enable) async {
    try {
      final paymentResult = await _dio.auth().get(
        '/payment_type',
        queryParameters: {
          if (enable != null) 'enable': enable,
        },
      );
      return paymentResult.data
          .map<PaymentTypeModel>((p) => PaymentTypeModel.fromMap(p))
          .toList();
    } on DioError catch (e, s) {
      log('Erro ao buscar formas de pagamento', error: e, stackTrace: s);
      throw RepositoryExceptions(message: 'Erro ao buscar formas de pagamento');
    }
  }

  @override
  Future<PaymentTypeModel> getById(int id) async {
    try {
      final paymentResult = await _dio.auth().get(
            '/payment_type/$id',
          );
      return PaymentTypeModel.fromMap(paymentResult.data);
    } on DioError catch (e, s) {
      log('Erro ao buscar forma de pagamento $id', error: e, stackTrace: s);
      throw RepositoryExceptions(
        message: 'Erro ao buscar forma de pagamento $id',
      );
    }
  }

  @override
  Future<void> save(PaymentTypeModel model) async {
    try {
      final client = _dio.auth();

      if (model.id != null) {
        await client.put(
          '/payment_type/${model.id}',
          data: model.toMap(),
        );
      } else {
        await client.post(
          '/payment_type/',
          data: model.toMap(),
        );
      }
    } on DioError catch (e, s) {
      log('Erro ao salver forma de pagamento', error: e, stackTrace: s);
      throw RepositoryExceptions(
        message: 'Erro ao salver forma de pagamento',
      );
    }
  }
}
