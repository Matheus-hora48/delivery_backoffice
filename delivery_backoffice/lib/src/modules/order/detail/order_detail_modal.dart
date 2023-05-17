import 'package:delivery_backoffice/src/modules/order/detail/widgets/order_product_item.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/helpers/size_extensions.dart';
import '../../../core/ui/styles/text_style.dart';
import 'widgets/order_button_bar.dart';
import 'widgets/order_info_tile.dart';

class OrderDetailModal extends StatefulWidget {
  const OrderDetailModal({Key? key}) : super(key: key);

  @override
  State<OrderDetailModal> createState() => _OrderDetailModalState();
}

class _OrderDetailModalState extends State<OrderDetailModal> {
  void _closeModal() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = context.screenWidth;
    return Material(
      color: Colors.black26,
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.white,
        elevation: 10,
        child: Container(
          width: screenWidth * (screenWidth > 1200 ? .5 : .7),
          padding: const EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Detalhe do pedido',
                        textAlign: TextAlign.center,
                        style: context.textStyles.textTitle,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        onPressed: _closeModal,
                        icon: const Icon(Icons.close),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Text(
                      'Nome do cliente: ',
                      style: context.textStyles.textBold,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Matheus Hora',
                      style: context.textStyles.textRegular,
                    )
                  ],
                ),
                const Divider(),
                ...List.generate(3, (index) => index)
                    .map(
                      (e) => const OrderProductItem(),
                    )
                    .toList(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total do pedido',
                        style: context.textStyles.textExtraBold.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        '200',
                        style: context.textStyles.textExtraBold.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const OrderInfoTile(label: 'Endereço de entrega', info: 'Av Paulista, 200',),
                const Divider(),
                const OrderInfoTile(label: 'Forma de pagameto', info: 'Cartão de credito',),
                const SizedBox(
                   height: 10,
                ),
                const OrderButtonBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
