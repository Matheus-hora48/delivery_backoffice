import 'package:delivery_backoffice/src/modules/products/home/widgets/product_item.dart';
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
            buttonPressed: () {},
          ),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                mainAxisExtent: 280,
                mainAxisSpacing: 20,
                maxCrossAxisExtent: 280,
                crossAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                return const ProductItem();
              },
            ),
          )
        ],
      ),
    );
  }
}
