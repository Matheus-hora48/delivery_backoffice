import 'package:flutter/material.dart';

import '../../core/ui/styles/text_style.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyles = context.textStyles;
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Text(
                    'Pedido',
                    style: textStyles.textBold,
                  ),
                  Text(
                    '1',
                    style: textStyles.textExtraBold,
                  ),
                  Expanded(
                    child: Text(
                      'Cancelado',
                      textAlign: TextAlign.end,
                      style: textStyles.textExtraBold.copyWith(
                        fontSize: 20,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                    height: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ),
        VerticalDivider(
          thickness: 1,
          color: Colors.grey,
        )
      ],
    );
  }
}
