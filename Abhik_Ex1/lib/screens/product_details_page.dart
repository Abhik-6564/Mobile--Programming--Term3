import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/cart_model.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;
  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    final cart = CartModel();

    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(product.image, height: 250, width: double.infinity, fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(product.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("\$${product.price.toStringAsFixed(2)}", style: TextStyle(fontSize: 20)),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white, foregroundColor: Colors.black),
              onPressed: () {
                cart.add(product);
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Added to cart")));
              },
              child: Text("Add to Cart"),
            )
          ],
        ),
      ),
    );
  }
}
