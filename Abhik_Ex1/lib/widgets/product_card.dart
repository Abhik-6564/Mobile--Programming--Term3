import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductCard({required this.product, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Expanded(child: Image.asset(product.image)),
          Text(product.name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text('\$${product.price.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}
