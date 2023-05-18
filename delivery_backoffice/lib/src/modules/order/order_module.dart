import 'package:delivery_backoffice/src/modules/order/order_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../repositories/order/order_repository.dart';
import '../../repositories/order/order_repository_impl.dart';
import '../../services/order/get_order_by_id.dart';
import '../../services/order/get_order_byd.dart';
import 'order_controller.dart';

class OrderModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton<OrderRepository>((i) => OrderRepositoryImpl(i())),
        Bind.lazySingleton((i) => OrderController(i(), i())),
        Bind.lazySingleton<GetOrderById>(
          (i) => GetOrderByIdImpl(i(), i(), i()),
        ),
        
      ];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute('/', child: (context, args) => const OrderPage())];
}
