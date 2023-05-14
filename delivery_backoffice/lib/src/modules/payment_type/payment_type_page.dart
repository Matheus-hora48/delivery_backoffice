import 'package:delivery_backoffice/src/modules/payment_type/widgets/payment_type_item.dart';
import 'package:flutter/material.dart';

import 'widgets/payment_type_header.dart';

class PaymentTypePage extends StatelessWidget {
  const PaymentTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      padding: const EdgeInsets.only(top: 40, bottom: 40, right: 40),
      child: Column(
        children: [
          const PaymentTypeHeader(),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisExtent: 120,
                mainAxisSpacing: 20,
                crossAxisSpacing: 10,
                maxCrossAxisExtent: 680,
              ),
              itemBuilder: (context, index) {
                return const PaymentTypeItem();
              },
            ),
          )
        ],
      ),
    );
  }
}
