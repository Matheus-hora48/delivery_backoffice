import 'package:mobx/mobx.dart';

import '../../../repositories/products/product_repository.dart';
part 'product_detail_controller.g.dart';

enum ProductDetailStateStatus{
  initial,
  loading,
  loaded,
  error,
  errorLoading,
  deleted,
  uploaded,
}

class ProductDetailController = ProductDetailControllerBase with _$ProductDetailController;

abstract class ProductDetailControllerBase with Store {
  final ProductRepository _productRepository;

  ProductDetailControllerBase(this._productRepository);
}