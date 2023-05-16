import 'dart:typed_data';

import 'package:mobx/mobx.dart';

import '../../../repositories/products/product_repository.dart';
part 'product_detail_controller.g.dart';

enum ProductDetailStateStatus {
  intial,
  loading,
  loaded,
  error,
  errorLoading,
  deleted,
  uploaded,
  saved,
}

class ProductDetailController = ProductDetailControllerBase
    with _$ProductDetailController;

abstract class ProductDetailControllerBase with Store {
  final ProductRepository _productRepository;

  @readonly
  var _status = ProductDetailStateStatus.intial;

  @readonly
  String? _errorMessage;

  @readonly
  String? _imagePath;

  ProductDetailControllerBase(this._productRepository);

  Future<void> uploadImageProduct(Uint8List file, String fileName) async {
    _status = ProductDetailStateStatus.loading;
    _imagePath = await _productRepository.uploadImageProduct(file, fileName);
    _status = ProductDetailStateStatus.uploaded;
  }
}
