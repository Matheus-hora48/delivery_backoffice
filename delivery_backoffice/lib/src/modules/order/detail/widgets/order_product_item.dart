import 'package:flutter/material.dart';

import '../../../../core/ui/styles/text_style.dart';

class OrderProductItem extends StatelessWidget {
  const OrderProductItem({Key? key}) : super(key: key);

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
              'X-tudo',
              style: context.textStyles.textRegular,
            ),
          ),
          Text(
            '1',
            style: context.textStyles.textRegular,
          ),
          Align(
            child: Expanded(
              child: Text(
                '100',
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
