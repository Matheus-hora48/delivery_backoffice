import 'package:delivery_backoffice/src/modules/payment_type/payment_type_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PaymentTypeModule extends Module {

   @override
   List<Bind> get binds => [];

   @override
   List<ModularRoute> get routes => [
      ChildRoute('/', child: (context, args) => const PaymentTypePage())
   ];

}