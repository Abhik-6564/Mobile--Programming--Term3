import 'package:flutter/material.dart';
import '../models/cart_model.dart';
import '../models/product.dart';

class CartPage extends StatefulWidget {
  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final cart = CartModel();

  void _removeItem(Product product) {
    setState(() {
      cart.remove(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Your Cart")),
      body: cart.items.isEmpty
          ? Center(child: Text("Your cart is empty"))
          : ListView.builder(
        itemCount: cart.items.length,
        itemBuilder: (context, index) {
          final product = cart.items[index];
          return ListTile(
            leading: Image.asset(product.image, width: 50),
            title: Text(product.name),
            subtitle: Text("\$${product.price.toStringAsFixed(2)}"),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle_outline, color: Colors.red),
              onPressed: () => _removeItem(product),
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20),
        color: Colors.grey[100],
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total:", style: TextStyle(fontSize: 18)),
            Text("\$${cart.total.toStringAsFixed(2)}", style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
