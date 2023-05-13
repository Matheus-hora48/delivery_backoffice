enum Menu {
  paymentType(
    '/payment-type/',
    'payment_type_ico.png',
    'payment_type_ico_selected.png',
    'Adiministrar Formas de Pagamento',
  ),

  products(
    '/products/',
    'product_ico.png',
    'product_ico_selected.png',
    'Adiministrar Produtos',
  ),

  orders(
    '/orders/',
    'order_ico.png',
    'order_ico_selected.png',
    'Pedidos do dia',
  );

  final String route;
  final String assetIcon;
  final String assetIconSelected;
  final String label;

  const Menu(this.route, this.assetIcon, this.assetIconSelected, this.label);
}
