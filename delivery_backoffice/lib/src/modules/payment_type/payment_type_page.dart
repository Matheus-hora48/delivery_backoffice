import 'package:flutter/material.dart';

import 'widgets/payment_type_header.dart';

class PaymentTypePage extends StatelessWidget {
  const PaymentTypePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      padding: EdgeInsets.only(top: 40, bottom: 40),
      child: Column(
        children: const [
          PaymentTypeHeader(),
          Center(
            child: Text('Tipo de pagamento'),
          ),
        ],
      ),
    );
  }
}
