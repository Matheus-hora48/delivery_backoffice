import 'package:flutter/material.dart';

import '../../../../core/extensions/formatter_extensions.dart';
import '../../../../core/ui/styles/text_style.dart';
import '../../../../dto/order/order_product_dto.dart';

class OrderProductItem extends StatelessWidget {
  final OrderProductDto orderProduct;
  const OrderProductItem({Key? key, required this.orderProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Text(
              orderProduct.product.name,
              style: context.textStyles.textRegular,
            ),
          ),
          Text(
            '${orderProduct.amount}',
            style: context.textStyles.textRegular,
          ),
          Align(
            child: Expanded(
              child: Text(
                orderProduct.totalPrice.currencyPTBR,
                textAlign: TextAlign.end,
                style: context.textStyles.textRegular,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
