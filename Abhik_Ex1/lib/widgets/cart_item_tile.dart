import 'package:flutter/material.dart';
import '../models/product.dart';

class CartItemTile extends StatelessWidget {
  final Product product;

  const CartItemTile({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(product.image, width: 50),
      title: Text(product.name),
      trailing: Text('\$${product.price.toStringAsFixed(2)}'),
    );
  }
}
