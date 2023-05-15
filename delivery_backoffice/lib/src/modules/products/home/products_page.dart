import 'package:flutter/material.dart';

import '../../../core/ui/widgets/base_header.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      padding: const EdgeInsets.only(top: 40, bottom: 40, right: 40),
      child: Column(
        children: [
          BaseHeader(
            title: 'ADINISTRAR PRODUTOS',
            buttonLabel: 'ADICIONAR PRODUTOS',
            buttonPressed: (){},
          ),
        ],
      ),
    );
  }
}
