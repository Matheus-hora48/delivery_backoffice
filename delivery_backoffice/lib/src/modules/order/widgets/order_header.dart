import 'package:flutter/material.dart';

import '../../../core/ui/widgets/base_header.dart';
import '../../../models/orders/order_status.dart';
import '../order_controller.dart';

class OrderHeader extends StatefulWidget {
  final OrderController controller;
  const OrderHeader({Key? key, required this.controller}) : super(key: key);

  @override
  State<OrderHeader> createState() => _OrderHeaderState();
}

class _OrderHeaderState extends State<OrderHeader> {
  OrderStatus? statusSelected;

  @override
  Widget build(BuildContext context) {
    return BaseHeader(
      title: 'Adinistrar Pedidos',
      addButton: false,
      filterWidget: DropdownButton<OrderStatus>(
        value: statusSelected,
        onChanged: (value) {
          setState(() {
            widget.controller.changeStatusFilter(value);
            statusSelected = value;
          });
        },
        items: [
          const DropdownMenuItem(value: null, child: Text('Todos')),
          ...OrderStatus.values
              .map(
                (s) => DropdownMenuItem(
                  value: s,
                  child: Text(s.name),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
