import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_details_page.dart';
import 'cart_page.dart';

class HomePage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Bluetooth Speaker', image: 'assets/speaker.png', price: 49.99),
    Product(name: 'Wireless Earbuds', image: 'assets/earbuds.png', price: 89.99),
    Product(name: 'Smart Watch', image: 'assets/watch.png', price: 129.99),
    Product(name: 'LED Monitor', image: 'assets/monitor.png', price: 179.99),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Electronics"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => CartPage())),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.72,
          ),
          itemBuilder: (ctx, i) {
            final product = products[i];
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ProductDetailsPage(product: product)),
              ),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                elevation: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 6,
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                        child: Image.asset(
                          product.image,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              product.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 6),
                            Text(
                              "\$${product.price.toStringAsFixed(2)}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
