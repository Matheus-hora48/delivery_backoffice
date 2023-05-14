import 'package:flutter/material.dart';

import '../../../core/ui/styles/text_style.dart';

class PaymentTypeItem extends StatelessWidget {
  const PaymentTypeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Image.asset('assets/images/icons/payment_cc_icon.png'),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Formas de pagemento',
                  style: context.textStyles.textRegular,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Cartão de credito',
                  style: context.textStyles.textTitle,
                ),
              ],
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Editar'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
