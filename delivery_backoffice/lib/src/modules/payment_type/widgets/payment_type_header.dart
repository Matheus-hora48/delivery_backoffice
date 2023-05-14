import 'package:flutter/material.dart';

import '../../../core/ui/widgets/base_header.dart';

class PaymentTypeHeader extends StatelessWidget {
  const PaymentTypeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseHeader(
      title: 'ADIMINSTRAR FORMAS DE PAGAMENTO',
      buttonLabel: 'Adicionar',
      buttonPressed: () {},
    );
  }
}
